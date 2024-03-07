<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {


    public function up(): void {
        Schema::create('faq_photo_translations', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('photo_id')->unsigned();
            $table->string('locale')->index();
            $table->longText('des')->nullable();
            $table->unique(['photo_id', 'locale']);
            $table->foreign('photo_id')->references('id')->on('faq_photos')->onDelete('cascade');;
        });
    }


    public function down(): void {
        Schema::dropIfExists('faq_photo_translations');
    }
};
