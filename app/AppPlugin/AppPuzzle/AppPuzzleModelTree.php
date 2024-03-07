<?php

namespace App\AppPlugin\AppPuzzle;

class AppPuzzleModelTree {

    static function ModelTree(){
        $modelTree = [

            'BlogPost'=>[
                'id'=>"BlogPost",
                'CopyFolder'=>"BlogPost",
                'infoFile'=>"BlogPost.txt",
                'appFolder'=> 'BlogPost',
                'viewFolder'=>'BlogPost',
                'routeFolder'=> null,
                'routeFile'=>'blogPost.php',
                'migrations'=> [
                    '2021_01_02_000001_create_blog_categories_table.php',
                    '2021_01_02_000002_create_blog_category_translations_table.php',
                    '2021_01_02_000003_create_blog_table.php',
                    '2021_01_02_000004_create_blog_translations_table.php',
                    '2021_01_02_000005_create_blogcategory_blog_table.php',
                    '2021_01_02_000006_create_blog_photos_table.php',
                    '2021_01_02_000007_create_blog_photo_translations_table.php',
                ],

                'seeder'=> [
                    'blog_categories.sql',
                    'blog_category_translations.sql',
                    'blog_photo_translations.sql',
                    'blog_photos.sql',
                    'blog_post.sql',
                    'blog_translations.sql',
                    'blogcategory_blog.sql',
                ],

                'adminLangFolder' => "admin/",
                'adminLangFiles' => ['blogPost.php'],
//                'webLangFolder' => "web/",
//                'webLangFiles' => ['proProduct.php'],
                'photoFolder' => ['blog-category','blog'],
//                'assetsFolder' => null,
//                'livewireClass' => null,
//                'livewireView'=> null,
            ],


            'Faq'=>[
                'id'=>"Faq",
                'CopyFolder'=>"Faq",
                'infoFile'=>"Faq.txt",
                'appFolder'=> 'Faq',
                'viewFolder'=>'Faq',
                'routeFolder'=> null,
                'routeFile'=>'faq.php',
                'migrations'=> [
                    '2021_01_01_000001_create_faq_categories_table.php',
                    '2021_01_01_000002_create_faq_category_translations_table.php',
                    '2021_01_01_000003_create_faqs_table.php',
                    '2021_01_01_000004_create_faq_translations_table.php',
                    '2021_01_01_000005_create_faqcategory_faq_table.php',
                    '2021_01_01_000006_create_faq_photos_table.php',
                    '2021_01_01_000007_create_faq_photo_translations_table.php',
                ],

                'seeder'=> [
                    'faq_categories.sql',
                    'faq_category_translations.sql',
                    'faq_faqs.sql',
                    'faq_photo_translations.sql',
                    'faq_photos.sql',
                    'faq_translations.sql',
                    'faqcategory_faq.sql',
                ],

                'adminLangFolder' => "admin/",
                'adminLangFiles' => ['faq.php'],
//                'webLangFolder' => "web/",
//                'webLangFiles' => ['proProduct.php'],
                'photoFolder' => ['faq','faqcategory'],
                'assetsFolder' => null,
                'livewireClass' => null,
                'livewireView'=> null,
            ],

            'Product'=>[
                'id'=>"Product",
                'CopyFolder'=>"Product",
                'infoFile'=>"Products.txt",
                'appFolder'=> 'Product',
                'viewFolder'=>'Product',
                'routeFolder'=> null,
                'routeFile'=>'proProduct.php',
                'migrations'=> [
                    '2023_01_01_000001_create_categories_table.php',
                    '2023_01_01_000002_create_category_translations_table.php',
                    '2023_01_01_000003_create_products_table.php',
                    '2023_01_01_000004_create_product_translations_table.php',
                    '2023_01_01_000005_create_product_photos_table.php',
                    '2023_01_01_000006_create_product_category_table.php',
                ],

                'seeder'=> [
                    'pro_categories.sql',
                    'pro_category_product.sql',
                    'pro_category_translations.sql',
                    'pro_product_photos.sql',
                    'pro_product_translations.sql',
                    'pro_products.sql',
                ],

                'adminLangFolder' => "admin/",
                'adminLangFiles' => ['proProduct.php'],
                'webLangFolder' => "web/",
                'webLangFiles' => ['proProduct.php'],
                'photoFolder' => ['category','product'],
                'assetsFolder' => null,
                'livewireClass' => null,
                'livewireView'=> null,
            ],

            'ConfigApps'=>[
                'id'=>"ConfigApps",
                'CopyFolder'=>"ConfigApps",
                'infoFile'=>"AppSetting.txt",
                'appFolder'=> 'Config/Apps',
                'viewFolder'=>'ConfigApp',
                'routeFolder'=> "config/",
                'routeFile'=>'appSetting.php',
                'migrations'=> [
                    '2019_12_14_000019_create_app_settings_table.php',
                    '2019_12_14_000020_create_app_setting_translations_table.php',
                    '2019_12_14_000021_create_app_menus_table.php',
                    '2019_12_14_000022_create_app_menu_translations_table.php',
                ],

                'seeder'=> [
                    'config_app_menus.sql',
                    'config_app_menu_translations.sql',
                    'config_app_setting_translations.sql',
                    'config_app_settings.sql',
                ],

                'adminLangFolder' => "admin/",
                'adminLangFiles' => ['configApp.php'],
                'photoFolder' => ['app-photo'],

            ],

            'ConfigMeta'=>[
                'id'=>"ConfigMeta",
                'CopyFolder'=>"ConfigMeta",
                'infoFile'=>"ConfigMeta.txt",
                'appFolder'=> 'Config/Meta',
                'viewFolder'=>'ConfigMeta',
                'routeFolder'=> "config/",
                'routeFile'=>'configMeta.php',
                'migrations'=> [
                    '2019_12_14_000003_create_meta_tags_table.php',
                    '2019_12_14_000004_create_meta_tag_translations_table.php',
                ],

                'seeder'=> [
                    'config_meta_tags.sql',
                    'config_meta_tag_translations.sql',
                ],
                'adminLangFolder' => "admin/",
                'adminLangFiles' => ['configMeta.php'],

            ],

            'ConfigPrivacy'=>[
                'id'=>"ConfigPrivacy",
                'CopyFolder'=>"ConfigPrivacy",
                'infoFile'=>"ConfigPrivacy.txt",
                'appFolder'=> 'Config/Privacy',
                'viewFolder'=>'ConfigPrivacy',
                'routeFolder'=> "config/",
                'routeFile'=>'webPrivacy.php',
                'migrations'=> [
                    '2019_12_14_000008_create_web_privacies_table.php',
                    '2019_12_14_000009_create_web_privacy_translations_table.php'
                ],

                'seeder'=> [
                    'config_web_privacies.sql',
                    'config_web_privacy_translations.sql'
                ],
                'adminLangFolder' => "admin/",
                'adminLangFiles' => ['configPrivacy.php'],

            ],

            'ConfigBranch'=>[
                'id'=>"ConfigBranch",
                'CopyFolder'=>"ConfigBranch",
                'infoFile'=>"ConfigBranch.txt",
                'appFolder'=> 'Config/Branche',
                'viewFolder'=>'ConfigBranch',
                'routeFolder'=> "config/",
                'routeFile'=>'Branch.php',
                'migrations'=> [
                    '2019_12_14_000017_create_branches_table.php',
                    '2019_12_14_000018_create_branch_translations_table.php',
                ],
                'seeder'=> [
                    'config_branches.sql',
                    'config_branch_translations.sql',
                ],
                'adminLangFolder' => "admin/",
                'adminLangFiles' => ['configBranch.php'],
            ],

            'DataCountry'=>[
                'id'=>"DataCountry",
                'CopyFolder'=>"DataCountry",
                'infoFile'=>"ConfigBranch.txt",
                'appFolder'=> 'Data/Country',
                'viewFolder'=>'DataCountry',
                'routeFolder'=> "data/",
                'routeFile'=>'country.php',
                'migrations'=> ['2019_12_14_000014_create_countries_table.php','2019_12_14_000015_create_country_translations_table.php'],
                'seeder'=>  ['data_countries.sql','data_country_translations.sql'],
                'adminLangFolder' => "admin/",
                'adminLangFiles' => ['dataCountry.php'],
                'assetsFolder' => ['flag'],
            ],

            'LeadsNewsLetter'=>[
                'id'=>"LeadsNewsLetter",
                'CopyFolder'=>"LeadsNewsLetter",
                'infoFile'=>"LeadsNewsLetter.txt",
                'appFolder'=> 'Leads/NewsLetter',
                'viewFolder'=>'LeadsNewsLetter',
                'routeFolder'=> "leads/",
                'routeFile'=>'newsLetter.php',
                'migrations'=> ['2019_12_14_000010_create_news_letters_table.php'],
                'seeder'=> ['leads_news_letters.sql'],
                'adminLangFolder' => "admin/",
                'adminLangFiles' => ['leadsNewsLetter.php'],
                'webLangFolder' => "web/",
                'webLangFiles' => ['newsletter.php'],
                'livewireClass' => ['Site'=>'NewsLetterForm.php'],
                'livewireView'=> ['site'=>'news-letter-form.blade.php'],
            ],

            'LeadsContactUs'=>[
                'id'=>"LeadsContactUs",
                'CopyFolder'=>"LeadsContactUs",
                'infoFile'=>"LeadsContactUs.txt",
                'appFolder'=> 'Leads/ContactUs',
                'viewFolder'=>'LeadsContactUs',
                'routeFolder'=> "leads/",
                'routeFile'=>'contactUs.php',
                'migrations'=>  ['2019_12_14_000013_create_contact_us_forms_table.php'],
                'seeder'=> ['leads_contact_us.sql'],
                'adminLangFolder' => "admin/",
                'adminLangFiles' => ['leadsContactUs.php'],
            ],


        ];

        return  $modelTree ;
    }

}
