<?php

namespace App\AppPlugin\BlogPost\Seeder;


use App\AppPlugin\BlogPost\Models\Blog;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;


class BlogSeeder extends Seeder {

    public function run(): void {
        Blog::unguard();
        $tablePath = public_path('db/blog_post.sql');
        DB::unprepared(file_get_contents($tablePath));
    }
}
