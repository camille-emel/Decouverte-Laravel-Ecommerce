<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return 'welcome';
});

Route::get('/product', function (){
    return 'product';
});
Route::get('/product/{id}', function ($id){
    return 'product'. $id;
});
Route::get('/cart', function (){
    return 'cart';
});
