<?php

namespace App\Http\Controllers;

use App\AppPlugin\Product\Models\Brand;
use App\AppPlugin\Product\Models\Category;
use App\AppPlugin\Product\Models\Product;
use App\AppPlugin\Product\Models\ProductPhotoThumbnail;
use App\AppPlugin\Product\Models\ProductTranslation;
use Corcel\Model\Post;
use Corcel\Model\Taxonomy;


class WordPressProController extends Controller {

    public $SaveData ;

    public function __construct(
        $SaveData = 0 ,
    )
    {
        $this->SaveData = $SaveData ;
    }


#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #
    public function index(){

//        $posts = Post::published()->where('post_type', 'product')
//            ->where('ID',57896)->with('children')->with('taxonomies')->first();
//
//        dd($posts->taxonomies);
//
//        foreach ($posts->children as $children){
//
//            echobr($children->ID);
//            foreach ($children->meta as $meta) {
//                $Line = $meta->meta_key . " > " . $meta->meta_value;
//                echobr($Line);
//            }
//
//            echobr("###########################################################################");
//        }
//        dd($posts->children);

        $xx = 'a:8:{i:0;O:8:"stdClass":6:{s:12:"attribute_id";s:2:"10";s:14:"attribute_name";s:4:"size";s:15:"attribute_label";s:12:"المقاس";s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}i:1;O:8:"stdClass":6:{s:12:"attribute_id";s:2:"12";s:14:"attribute_name";s:27:"ارتفاع-المرتبة";s:15:"attribute_label";s:27:"ارتفاع المرتبة";s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}i:2;O:8:"stdClass":6:{s:12:"attribute_id";s:2:"19";s:14:"attribute_name";s:14:"الماركة";s:15:"attribute_label";s:14:"الماركة";s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}i:3;O:8:"stdClass":6:{s:12:"attribute_id";s:2:"18";s:14:"attribute_name";s:19:"طبقة-مميزة";s:15:"attribute_label";s:19:"طبقة مميزة";s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}i:4;O:8:"stdClass":6:{s:12:"attribute_id";s:2:"14";s:14:"attribute_name";s:21:"طول-المرتبة";s:15:"attribute_label";s:21:"طول المرتبة";s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}i:5;O:8:"stdClass":6:{s:12:"attribute_id";s:2:"13";s:14:"attribute_name";s:21:"عرض-المرتبة";s:15:"attribute_label";s:21:"عرض المرتبة";s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}i:6;O:8:"stdClass":6:{s:12:"attribute_id";s:2:"17";s:14:"attribute_name";s:21:"نوع-الاسفنج";s:15:"attribute_label";s:21:"نوع الاسفنج";s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}i:7;O:8:"stdClass":6:{s:12:"attribute_id";s:2:"15";s:14:"attribute_name";s:21:"نوع-المرتبة";s:15:"attribute_label";s:21:"نوع المرتبة";s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}}';
        dd(unserialize($xx));
        $cats = Taxonomy::where('taxonomy', 'product_attributes')->with('meta')->take(1)->get();
        $cats = Taxonomy::where('taxonomy', 'pa_size')->with('meta')->get();
        $cats = Taxonomy::where('taxonomy', 'pa_طبقة-مميزة')->with('meta')->with('posts')->get();
        $cats = Taxonomy::where('taxonomy', 'pa_size')->with('meta')->with('posts')->get();


        $cats = Taxonomy::where('taxonomy', '_transient_wc_attribute_taxonomies')->with('meta')->get();
        dd($cats);

//        foreach ($cats as $cat){
//
//            echobr($cat->term->name);
//            echobr(count($cat->posts));
//            echobr("-----------------------------------");
//        }
//        dd($cats);

//        $rowData =  Product::def()->where('cat_id',null)->take(1)->get();
//        foreach ($rowData as $pro){
//            echobr($pro->old_id);
//            $post = Post::where('ID',$pro->old_id)->first();
//            foreach ($post->meta as $meta){
//                $Line = $meta->meta_key . " > " . $meta->meta_value;
//                echobr($Line);
//            }
//            dd($post);
//
//        }



        //$saveData->categories()->sync($categories);

    }


#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #  UpdateNoCat

    function UpdateNoCat(){
        $proId = ['37205','38225','38978','38990','42336'];
        $rowData =  Product::def()->whereIn('old_id',$proId)->get();
        foreach ($rowData as $row){
            $row->categories()->sync([8]);
            $row->cat_id = 8;
            $row->save();
        }

        $proId = ['40058','40214','40206','','','','','',];
        $rowData =  Product::def()->whereIn('old_id',$proId)->get();
        foreach ($rowData as $row){
            $row->categories()->sync([7]);
            $row->cat_id = 7;
            $row->save();
        }

        $proId = ['40190','40198','40183','43169','43875','43916','44038','44707','44743','44744','44745'
            ,'44746','45048','45055','45056','45236','45242','50065','50079','50092','50105','50118','50131','50144',
            '50157','50170','50183','57703','57759','','','','','',];
        $rowData =  Product::def()->whereIn('old_id',$proId)->get();
        foreach ($rowData as $row){
            $row->categories()->sync([1]);
            $row->cat_id = 1;
            $row->save();
        }

        $proId = ['42992','42748','43214','','','','','',];
        $rowData =  Product::def()->whereIn('old_id',$proId)->get();
        foreach ($rowData as $row){
            $row->categories()->sync([9]);
            $row->cat_id = 9;
            $row->save();
        }


        $proId = ['47745','','','','','',];
        $rowData =  Product::def()->whereIn('old_id',$proId)->get();
        foreach ($rowData as $row){
            $row->categories()->sync([25]);
            $row->cat_id = 25;
            $row->save();
        }

        dd($rowData);
    }


#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #
    public function indexBrand(){
        $UpdateOldBarnd = Product::where('old_brand_id','!=',null)->get();
        if(count($UpdateOldBarnd) > 0){
            foreach ($UpdateOldBarnd as $oldBrand){
                $getNewId = Brand::where('old_id',$oldBrand->old_brand_id)->first();
                if($getNewId){
                    $oldBrand->old_brand_id = null;
                    $oldBrand->brand_id = $getNewId->id;
                    $oldBrand->save();
                }
            }
        }
    }



#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #
    public function indexCat(){
        $AllCats = Category::all();
        foreach ($AllCats as $cat){
            $thisId = $cat->id ;
            $AllPost = Product::where('cat_id',$thisId)->get();
            foreach ($AllPost as $post){
                $post->categories()->sync([$thisId]);
            }
        }
    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #
    public function indexY(){
        $UpdateOldCat = Product::where('old_cat_id','!=',null)->get();
        if(count($UpdateOldCat) > 0){
            foreach ($UpdateOldCat as $oldCat){
                $getNewId = Category::where('old_id',$oldCat->old_cat_id)->first();
//                echobr($oldCat->old_cat_id." ".$getNewId->id);
                $oldCat->old_cat_id = null;
                $oldCat->cat_id = $getNewId->id;
                $oldCat->save();
            }
        }
    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #
    public function indexDone(){

        if($this->SaveData){
            $posts = Post::published()->where('post_type', 'product')
                ->with('children')->with('taxonomies')->with('attachment')->take(1000)->get();
//            $posts = Post::published()->where('post_type', 'product')->where('ID',39851)
//                ->with('children')->with('taxonomies')->with('attachment')->take(100)->get();

        }else{
            $posts = Post::published()->where('post_type', 'product')
                ->where('ID','!=',50183)->with('children')->with('taxonomies')->with('attachment')->take(100)->get();

        }

        foreach ($posts as $post) {

            if(isset($post->thumbnail->attachment->guid)){
                $photo = self::UpdatePhotoPath($post->thumbnail->attachment->guid);
            }else{
                $photo = null;
            }

            $newProduct = new Product();
            $newProduct->old_id = $post->ID;
            $newProduct->created_at  = $post->post_date;
            $newProduct->updated_at   = $post->post_modified;
            $newProduct->photo   = $photo;
            $newProduct->photo_thum_1   = $photo;
            $newProduct->children   = count($post->children);

            if ($this->SaveData){
                $newProduct->save();
                self::SaveThumbnail($post,$newProduct);
            }


            $newTranslation = new ProductTranslation();
            $newTranslation->product_id = $newProduct->id ;
            $newTranslation->locale = "ar" ;
            $newTranslation->slug =  urldecode($post->post_name); ;
            $newTranslation->name = $post->post_title ;
            $newTranslation->des  = $post->post_content ;
            if(isset($post->post_excerpt)){
                $newTranslation->short_des  = $post->post_excerpt ;
            }

            if ($this->SaveData){
                $newTranslation->save() ;
            }


            foreach ($post->meta as $meta) {
                $Line = $meta->meta_key . " > " . $meta->meta_value;
                if (count($post->children) == 0){
                    self::SaveMetaIntval($meta,$newProduct,'_regular_price','regular_price');
                    self::SaveMetaIntval($meta,$newProduct,'_price','price');
                }
                self::SaveMetaIntval($meta,$newProduct,'rank_math_primary_product_cat','old_cat_id');
                self::SaveMetaIntval($meta,$newProduct,'rank_math_primary_yith_product_brand','old_brand_id');

                if ($meta->meta_key == 'rank_math_title') {
                    self::UpdateMeta($newProduct->id,'g_title',$meta->meta_value);
                }

                if ($meta->meta_key == 'rank_math_description') {
                    self::UpdateMeta($newProduct->id,'g_des',$meta->meta_value);
                }

                if (!$this->SaveData) {
                    echobr($Line);

                }
            }



            if (!$this->SaveData) {

                echobr("###########################################");
            }

        }


    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #
    public function UpdateMeta($saveData,$row,$val){
        if($this->SaveData){
            $saveTranslation = ProductTranslation::where("product_id", $saveData)->where('locale', 'ar')->first();
            if($saveTranslation != null){
                $val = str_replace(['%title%','%page%','%sep%'],['','',''],$val);
                $saveTranslation->$row = trim($val) ;
                $saveTranslation->save() ;
            }
        }
    }
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #
    public function SaveMetaIntval($meta,$saveTo,$key,$db){
        if($meta->meta_key == $key){
            if ($this->SaveData){
                if(intval($meta->meta_value)>0){
                    $saveTo->$db = $meta->meta_value ;
                    $saveTo->save();
                }

            }else{
//                echobr($meta->meta_key . " ".$meta->meta_value);
            }
        }
    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #       SaveThumbnail
    public function SaveThumbnail($post,$newProduct){
        if(isset($post->thumbnail->attachment->guid)){
            $allsize = $post->thumbnail->allsize();
            if($allsize != null){
                foreach ($allsize as $key => $value){
                    $thisDir = dirname($post->thumbnail->attachment->guid .'/'.$value['file']);
                    $saveThumbnail = new ProductPhotoThumbnail();
                    $saveThumbnail->product_id = $newProduct->id;
                    $saveThumbnail->key = $key;
                    $saveThumbnail->file = $value['file'];
                    $saveThumbnail->width = $value['width'];
                    $saveThumbnail->height = $value['height'];
                    $saveThumbnail->url = self::UpdatePhotoPath($thisDir);
                    if ($this->SaveData){
                        $saveThumbnail->save();
                    }
                }
            }
        }
    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #   UpdatePhotoPath
    public function UpdatePhotoPath($url){
        $thumbnail = str_replace(['https://cottton.shop/','http://cottton.shop/'],['',''],$url);
        return $thumbnail;
    }

}
