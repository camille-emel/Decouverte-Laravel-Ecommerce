<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function list()
    {
        return view('product-list', ['var' => 'Product List']);
    }

    public function details($id)
    {
        $var = "Fiche du produit {$id}";
        return view('product-details', ['var' => $var]);
    }
}
