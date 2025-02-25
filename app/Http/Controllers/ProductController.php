<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

class ProductController extends Controller
{
    // Show All Products
    public function index()
    {
        $products = Product::all();
        return view('product', compact('products'));
    }

    // Show Single Product Page
    public function show($id)
    {
        $product = Product::where('categorie_id', $id)->first();

        if (!$product) {
            abort(404, 'Product not found');
        }

        return view('single-product', compact('product'));
    }
}
