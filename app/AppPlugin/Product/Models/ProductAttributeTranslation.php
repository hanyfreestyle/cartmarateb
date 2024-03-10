<?php

namespace App\AppPlugin\Product\Models;

use Illuminate\Database\Eloquent\Model;

class ProductAttributeTranslation extends Model {

    protected $table = "pro_attribute_translations";
    protected $fillable = ['name','slug'];
    public $timestamps = false;

}
