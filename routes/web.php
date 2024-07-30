<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\HomeController;

Route::get('/', [HomeController::class, 'homepage']);

Route::get('/product', [ProductController::class, 'list']);

Route::get('/product/{id}', [ProductController::class, 'details']);

Route::get('/cart', [CartController::class, 'viewCart']);
