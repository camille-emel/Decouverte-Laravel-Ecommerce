<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CartController extends Controller
{
    public function viewCart()
    {
        return view('cart',['var'=>'THIS IS THE CART,THE ONLY CART']);
    }
}
