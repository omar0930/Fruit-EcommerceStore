<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use App\Models\Product;

class CartController extends Controller
{
    // Show Cart Page
    public function index()
    {
        $cart = session()->get('cart', []);

        return view('cart', ['cart' => $cart]);
    }

    // Add Product to Cart
    public function addToCart($id)
    {
        $product = \App\Models\Product::findOrFail($id);
    
        // Retrieve the current cart session
        $cart = session()->get('cart', []);
    
        // If product exists in cart, increase quantity
        if (isset($cart[$id])) {
            $cart[$id]['quantity']++;
        } else {
            // Otherwise, add product to cart
            $cart[$id] = [
                'name' => $product->name,
                'price' => $product->price,
                'quantity' => 1,
                'image' => $product->imagepath // Fixing the image path
            ];
        }
    
        // Store updated cart in session
        session()->put('cart', $cart);
    
        return redirect()->route('cart')->with('success', 'Product added to cart!');
    }
    

    // Remove Product from Cart
    public function removeFromCart($id)
    {
        $cart = session()->get('cart', []);

        if (isset($cart[$id])) {
            unset($cart[$id]);
            session()->put('cart', $cart);
        }

        return redirect()->route('cart')->with('success', 'Product removed from cart.');
    }

    public function updateCart(Request $request, $id)
{
    $cart = session()->get('cart', []);

    if (isset($cart[$id])) {
        $cart[$id]['quantity'] = max(1, intval($request->quantity)); // Prevents 0 or negative values
        session()->put('cart', $cart);
    }

    return redirect()->route('cart')->with('success', 'Cart updated successfully!');
}

}
