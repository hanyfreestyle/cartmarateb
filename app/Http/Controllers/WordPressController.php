<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Corcel\Model\Post ;

class WordPressController extends Controller
{

    public function index(){
       //  $posts = Post::published()->where('post_type','product')->take(5)->get();
         $posts = Post::published()->where('post_type','product')->first();

        $posts = Post::published()->get()->groupby('post_type');
        //$post = Post::published()->hasMeta('featured_article')->first();

 dd($posts);

//        echobr($posts->post_content);
        foreach ($posts->meta as $meta){
            $Line = $meta->meta_key ." > ".$meta->meta_value ;
            echobr($Line);
        }
    }
}
