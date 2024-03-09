<?php

namespace App\Http\Controllers;

use App\AppPlugin\BlogPost\Models\Blog;
use App\AppPlugin\BlogPost\Models\BlogCategory;
use App\AppPlugin\BlogPost\Models\BlogTranslation;
use App\AppPlugin\Product\Models\Brand;
use App\AppPlugin\Product\Models\Category;
use App\AppPlugin\Product\Models\Product;
use App\AppPlugin\Product\Models\ProductPhotoThumbnail;
use App\AppPlugin\Product\Models\ProductTranslation;
use Corcel\Model\Post;


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
    public function indexBrand(){
        $UpdateOldBarnd = Product::where('old_brand_id','!=',null)->get();
        if(count($UpdateOldBarnd) > 0){
            foreach ($UpdateOldBarnd as $oldBrand){
                $getNewId = Brand::where('old_id',$oldBrand->old_brand_id)->first();
                if($getNewId){
//                    echobr($oldBrand->old_brand_id." ".$getNewId->id);
                    $oldBrand->old_brand_id = null;
                    $oldBrand->cat_id = $getNewId->id;
                    $oldBrand->save();
                }
            }
        }
    }



#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #
    public function indexHany(){
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
    public function indexYYYY(){
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
