<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CheckoutController extends Controller
{
    // Show Checkout Page
    public function index()
    {
        return view('checkout');
    }

    // Process Checkout Form
    public function process(Request $request)
    {
        // Validate the form data
        $request->validate([
            'name' => 'required',
            'email' => 'required|email',
            'address' => 'required',
            'payment_method' => 'required'
        ]);

        // Example: Save order to database (You need an Order model for this)
        // Order::create([
        //     'user_id' => auth()->id(),
        //     'total_price' => Cart::total(),
        //     'payment_method' => $request->payment_method
        // ]);

        // Redirect to a confirmation page
        return redirect()->route('checkout.success')->with('success', 'Order placed successfully!');
    }

    // Checkout Success Page
    public function success()
    {
        return view('checkout-success');
    }
}
