<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/product', function (){
    return view('product');
});
Route::get('/product/{id}', function ($id){
    return view('product'. $id);
});
Route::get('/cart', function (){
    return view('cart');
});
