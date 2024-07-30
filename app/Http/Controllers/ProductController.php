<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function list()
    {
        return 'Liste des produits';
    }

    public function details($id)
    {
        return "Fiche du produit {$id}";
    }
}
