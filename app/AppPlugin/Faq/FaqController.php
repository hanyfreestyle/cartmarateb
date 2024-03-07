<?php

namespace App\AppPlugin\Faq;

use App\AppPlugin\Faq\Models\Faq;
use App\AppPlugin\Faq\Models\FaqCategory;
use App\AppPlugin\Faq\Models\FaqPhoto;
use App\AppPlugin\Faq\Models\FaqPhotoTranslation;
use App\AppPlugin\Faq\Models\FaqTranslation;

use App\AppPlugin\Faq\Request\FaqRequest;
use App\Helpers\AdminHelper;
use App\Http\Controllers\AdminMainController;

use App\Http\Traits\CrudTraits;
use App\Models\admin\Developer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\View;


class FaqController extends AdminMainController {

    use CrudTraits;


    function __construct(Faq $model, FaqTranslation $translation,FaqCategory $modelCategory, FaqPhoto $modelPhoto , FaqPhotoTranslation $photoTranslation ) {
        parent::__construct();
        $this->controllerName = "Question";
        $this->PrefixRole = 'Faq';
        $this->selMenu = "Faq.";
        $this->PrefixCatRoute = "";
        $this->PageTitle = __('admin/faq.app_menu_faq');
        $this->PrefixRoute = $this->selMenu . $this->controllerName;
        $this->model = $model;
        $this->modelCategory = $modelCategory;
        $this->modelPhoto = $modelPhoto;
        $this->photoTranslation = $photoTranslation;
        $this->modelPhotoColumn = 'faq_id';
        $this->UploadDirIs = 'faq';
        $this->translation = $translation;
        $this->translationdb = 'faq_id';

        $this->modelPhotoEdit = true;
        View::share('modelPhotoEdit', $this->modelPhotoEdit);

        $sendArr = [
            'TitlePage' => $this->PageTitle,
            'PrefixRoute' => $this->PrefixRoute,
            'PrefixRole' => $this->PrefixRole,
            'AddConfig' => true,
            'configArr' => ["editor" => 1, 'morePhotoFilterid' => 1],
            'yajraTable' => true,
            'AddLang' => true,
            'AddMorePhoto' => true,
            'restore' => 1,
        ];

        self::loadConstructData($sendArr);

    }


#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| # ClearCash
    public function ClearCash() {
        Cache::forget('CCCCCCCCCCCC');
    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #     index
    public function index() {
        $pageData = $this->pageData;
        $pageData['ViewType'] = "List";
        $pageData['SubView'] = false;
        $pageData['Trashed'] = $this->model::onlyTrashed()->count();

        if ($this->viewDataTable and $this->yajraTable){
            return view('AppPlugin.Faq.index_DataTable',compact('pageData'));
        }else{
            $rowData = self::getSelectQuery($this->model::def());
            return view('AppPlugin.Faq.index', compact('pageData', 'rowData'));
        }
    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #   DataTable
    public function DataTable(Request $request){
        if ($request->ajax()) {
            $data = $this->model::select(['faq_faqs.id','photo_thum_1','is_active'])->with('tablename');
            return self::DataTableAddColumns($data)->make(true);
        }
    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #     SoftDeletes
    public function SoftDeletes() {
        $pageData = $this->pageData;
        $pageData['ViewType'] = "deleteList";
        $pageData['SubView'] = false;
        $rowData = self::getSelectQuery($this->model::onlyTrashed());
        return view('AppPlugin.Faq.index', compact('pageData', 'rowData'));
    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #     SubCategory
    public function ListCategory($id) {
        $pageData = $this->pageData;
        $pageData['ViewType'] = "List";
        $pageData['SubView'] = true;
        $Category = $this->modelCategory::findOrFail($id);
        $rowData = self::getSelectQuery($this->model::def()->whereHas('categories', function ($query) use ($id) {
            $query->where('category_id', $id);
        }));
        return view('AppPlugin.Faq.index', compact('pageData', 'rowData'));
    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #     create
    public function create() {
        $pageData = $this->pageData;
        $pageData['ViewType'] = "Add";
        $Categories = $this->modelCategory::all();
        $rowData = $this->model::findOrNew(0);
        $LangAdd = self::getAddLangForAdd();
        $selCat = [];
        return view('AppPlugin.Faq.form',compact('pageData','rowData','Categories','LangAdd','selCat'));
    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #     edit
    public function edit($id) {
        $pageData = $this->pageData;
        $pageData['ViewType'] = "Edit";
        $Categories = $this->modelCategory::all();
        $rowData = $this->model::where('id', $id)->with('categories')->firstOrFail();
        $selCat = $rowData->categories()->pluck('category_id')->toArray();
        $LangAdd = self::getAddLangForEdit($rowData);
        return view('AppPlugin.Faq.form',compact('pageData','rowData','Categories','LangAdd','selCat'));
    }


#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #     storeUpdate
    public function storeUpdate(FaqRequest $request, $id = 0) {
        $saveData = $this->model::findOrNew($id);
        try {
            DB::transaction(function () use ($request, $saveData) {
                $categories = $request->input('categories');

                $saveData->is_active = intval((bool)$request->input('is_active'));
                $saveData->youtube = $request->input('youtube');
                $saveData->save();

                $saveData->categories()->sync($categories);
                self::SaveAndUpdateDefPhoto($saveData, $request, $this->UploadDirIs, 'en.name');

                $addLang = json_decode($request->add_lang);
                foreach ($addLang as $key => $lang) {
                    $dbName = $this->translationdb;
                    $saveTranslation = $this->translation->where($dbName, $saveData->id)->where('locale', $key)->firstOrNew();
                    $saveTranslation->$dbName = $saveData->id;
                    $saveTranslation->youtube_title = $request->input($key.'.youtube_title');
                    $saveTranslation->slug = AdminHelper::Url_Slug($request->input($key . '.slug'));
                    $saveTranslation = self::saveTranslationMain($saveTranslation, $key, $request);
                    $saveTranslation->save();
                }
            });
        } catch (\Exception $exception) {
            return back()->with('data_not_save', "");
        }
        self::ClearCash();
        return self::redirectWhere($request, $id, $this->PrefixRoute . '.index');

    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #     ForceDeletes
    public function ForceDeleteException($id) {
        $deleteRow = $this->model::onlyTrashed()->where('id', $id)->with('more_photos')->firstOrFail();
        if(count($deleteRow->more_photos) > 0) {
            foreach ($deleteRow->more_photos as $del_photo) {
                AdminHelper::DeleteAllPhotos($del_photo);
            }
        }
        $deleteRow = AdminHelper::DeleteAllPhotos($deleteRow);
        AdminHelper::DeleteDir($this->UploadDirIs, $id);
        $deleteRow->forceDelete();
        self::ClearCash();
        return back()->with('confirmDelete', "");
    }

}
