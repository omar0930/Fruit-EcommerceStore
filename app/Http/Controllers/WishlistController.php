<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Wishlist;

class WishlistController extends Controller
{
    public function index()
    {
        $wishlist = auth()->user()->wishlist;
        return view('dashboard.wishlist', compact('wishlist'));
    }

    public function add($id)
    {
        Wishlist::firstOrCreate([
            'user_id' => auth()->id(),
            'product_id' => $id
        ]);

        return redirect()->back()->with('success', 'Added to Wishlist!');
    }

    public function remove($id)
    {
        Wishlist::where('user_id', auth()->id())->where('product_id', $id)->delete();
        return redirect()->back()->with('success', 'Removed from Wishlist!');
    }
}
