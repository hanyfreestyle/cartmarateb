<?php

use App\AppPlugin\AppPuzzle\AppPuzzleController;
use App\Http\Controllers\admin\DashboardController;
use App\Http\Controllers\WordPressController;
use Illuminate\Support\Facades\Route;

Route::get('/word',[WordPressController::class,'index'])->name('admin.wors');

Route::get('/',[DashboardController::class,'Dashboard'])->name('admin.Dashboard');
Route::get('/testpdf',[DashboardController::class,'testpdf'])->name('admin.testpdf');
Route::get('/adminTest/{model}',[DashboardController::class,'adminTest'])->name('admin.adminTest');

Route::get('/AppPuzzle/List',[AppPuzzleController::class,'IndexModel'])->name('AppPuzzle.IndexModel');
Route::get('/AppPuzzle/Info/{model}',[AppPuzzleController::class,'InfoModel'])->name('AppPuzzle.InfoModel');
Route::get('/AppPuzzle/Copy/{model}',[AppPuzzleController::class,'CopyModel'])->name('AppPuzzle.Export');
Route::get('/AppPuzzle/Remove/{model}',[AppPuzzleController::class,'RemoveModel'])->name('AppPuzzle.Remove');
Route::get('/AppPuzzle/Import/{model}',[AppPuzzleController::class,'ImportModel'])->name('AppPuzzle.Import');
