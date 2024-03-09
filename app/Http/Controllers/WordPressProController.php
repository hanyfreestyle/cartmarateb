<?php

namespace App\Http\Controllers;

use App\AppPlugin\Product\Models\Product;
use App\AppPlugin\Product\Models\ProductPhotoThumbnail;
use Corcel\Model\Post;


class WordPressProController extends Controller {


#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #
    public function index(){
        $SaveData = 0 ;

        if($SaveData){
            $posts = Post::published()->where('post_type', 'product')->with('attachment')->take(5555555555555555555)->get();
        }else{
            $posts = Post::published()->where('post_type', 'product')->with('attachment')->take(2)->get();
        }


        foreach ($posts as $post) {
            echobr($post->ID);
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

            if ($SaveData){
                $newProduct->save();
            }
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
                        if ($SaveData){
                            $saveThumbnail->save();
                        }
                    }
                }
            }


//            dd('stop');
//            $newTranslation = new ProductTranslation();
//            $newTranslation->product_id = $newProduct->id ;
//            $newTranslation->locale = "ar" ;
//            $newTranslation->slug =  urldecode($post->post_name); ;
//            $newTranslation->name = $post->post_title ;
//            $newTranslation->des  = $post->post_content ;
//            if ($SaveData){
//                $newTranslation->save() ;
//            }



        }


    }


#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #   UpdatePhotoPath
    public function UpdatePhotoPath($url){
        $thumbnail = str_replace(['https://cottton.shop/','http://cottton.shop/'],['',''],$url);
        return $thumbnail;
    }

}
