<?php

namespace App\Http\Controllers;

use App\AppPlugin\BlogPost\Models\Blog;
use App\AppPlugin\BlogPost\Models\BlogTranslation;
use Corcel\Model\Taxonomy;
use Illuminate\Http\Request;
use Corcel\Model\Post;
use Illuminate\Support\Carbon;

class WordPressController extends Controller {


    //        $posts = Post::published()->where('post_type', 'post')->first();


    
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #
    public function ImportPosts() {
        $SaveData = 0 ;

        if($SaveData){
            $posts = Post::published()->where('post_type', 'post')->get();
        }else{
            $posts = Post::published()->where('post_type', 'post')->take(25)->get();
        }


        foreach ($posts as $post) {
            echobr($post->ID);
            echobr('##############################################');

            $newPost = new Blog();
            $newPost->old_id = $post->ID;
            $newPost->created_at  = $post->post_date;
            $newPost->updated_at   = $post->post_modified;
            $newPost->published_at   = Carbon::parse($post->post_date)->format("Y-m-d");
            if($post->thumbnail != null){
                $thumbnail = str_replace('https://cottton.shop/','',$post->thumbnail);
                $newPost->photo  = $thumbnail;
                $newPost->photo_thum_1  = $thumbnail;
            }

            if ($SaveData){
                $newPost->save();
            }


            $newTranslation = new BlogTranslation();
            $newTranslation->blog_id = $newPost->id ;
            $newTranslation->locale = "ar" ;
            $newTranslation->slug =  urldecode($post->post_name); ;
            $newTranslation->name = $post->post_title ;
            $newTranslation->des  = $post->post_content ;
            if ($SaveData){
                $newTranslation->save() ;
            }


            foreach ($post->meta as $meta) {
                $Line = $meta->meta_key . " > " . $meta->meta_value;

                if ($SaveData){
                    if ($meta->meta_key == '_yoast_wpseo_primary_category' ) {
                        $newPost->old_cat = $meta->meta_value;
                        $newPost->save();
                    }

                    if ($meta->meta_key == '_yoast_post_redirect_info' ) {
                        $newPost->redirect_info = $meta->meta_value;
                        $newPost->save();
                    }


                    if ($meta->meta_key == '_yoast_wpseo_title') {
                        self::UpdateMeta($newPost->id,'g_title',$meta->meta_value);
                    }

                    if ($meta->meta_key == '_yoast_wpseo_metadesc') {
                        self::UpdateMeta($newPost->id,'g_des',$meta->meta_value);
                    }

                }

               echobr($Line);
            }
            echobr("----------------------------");
        }
    }





#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #
public function UpdateMeta($saveData,$row,$val){
    $saveTranslation = BlogTranslation::where("blog_id", $saveData)->where('locale', 'ar')->first();
    if($saveTranslation != null){
        $saveTranslation->$row = $val ;
        $saveTranslation->save() ;
    }
}


    #@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #
    public function indexSSSS() {
//        $cat = Taxonomy::category()->get();
//        dd($cat);
//        echo "<pre>"; print_r($cat->name); echo "</pre>";

//        $cat = Taxonomy::where('taxonomy', 'product_cat')->with('posts')->get();
//        dd($cat);

//        $cat->each(function($category) {
//            echo $category->name;
//        });
//        dd('ddd');


        $posts = Post::published()->where('post_type', 'post')->take(25)->get();

        foreach ($posts as $post) {
            echobr($post->ID);
            echobr('##############################################');

            $newPost = new Blog();
            $newPost->old_id = $post->ID;
            $newPost->created_at  = $post->post_date;
            $newPost->updated_at   = $post->post_modified;
            $newPost->published_at   = Carbon::parse($post->post_date)->format("Y-m-d");
            if($post->thumbnail != null){
                $thumbnail = str_replace('https://cottton.shop/','',$post->thumbnail);
                $newPost->photo  = $thumbnail;
                $newPost->photo_thum_1  = $thumbnail;
            }
            $newPost->save();

            $newTranslation = new BlogTranslation();
            $newTranslation->blog_id = $newPost->id ;
            $newTranslation->locale = "ar" ;
            $newTranslation->slug =  urldecode($post->post_name); ;
            $newTranslation->name = $post->post_title ;
            $newTranslation->des  = $post->post_content ;
            $newTranslation->save() ;

            foreach ($post->meta as $meta) {
                $Line = $meta->meta_key . " > " . $meta->meta_value;

                if ($meta->meta_key == '_yoast_wpseo_primary_category' ) {
                    $newPost->old_cat = $meta->meta_value;
                    $newPost->save();
                }

                if ($meta->meta_key == '_yoast_post_redirect_info' ) {
                    $newPost->redirect_info = $meta->meta_value;
                    $newPost->save();
                }


                if ($meta->meta_key == '_yoast_wpseo_title') {
                    self::UpdateMeta($newPost->id,'g_title',$meta->meta_value);
                }

                if ($meta->meta_key == '_yoast_wpseo_metadesc') {
                    self::UpdateMeta($newPost->id,'g_des',$meta->meta_value);
                }


                echobr($Line);

            }
            echobr("----------------------------");
        }

    }

}
