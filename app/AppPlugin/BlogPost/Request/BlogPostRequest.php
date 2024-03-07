<?php

namespace App\AppPlugin\BlogPost\Request;

use App\Helpers\AdminHelper;
use App\Http\Controllers\AdminMainController;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Request;

class BlogPostRequest extends FormRequest {

    public function authorize(): bool {
        return true;
    }

    protected function prepareForValidation() {
        $data = $this->toArray();
        $data = AdminMainController::prepareSlug($data);
        $this->merge($data);
    }

    public function rules(Request $request): array {

        $addLang = json_decode($request->add_lang);
        foreach ($addLang as $key => $lang) {
            $request->merge([$key . '.slug' => AdminHelper::Url_Slug($request[$key]['slug'])]);
        }

        $id = $this->route('id');

        $rules = [
            'categories' => 'required|array|min:1',

        ];
        if($id == '0') {
            $rules["published_at"] = "nullable|date_format:Y-m-d";
        } else {
            $rules["published_at"] = "required|date_format:Y-m-d";
        }


        $rules += AdminMainController::FormRequestSeo($id, $addLang, 'blog_translations','blog_id');

        return $rules;
    }
}
