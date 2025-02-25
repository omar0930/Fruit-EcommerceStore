<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\DB;
use App\Models\Product;
use App\Models\Category;
use App\Http\Controllers\UserController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\CheckoutController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\WishlistController;
use App\Http\Controllers\ReviewController;

//  Homepage - Show Categories
Route::get('/', function () {
    $categories = DB::table("categories")->get();
    return view('welcome', ["categories" => $categories]);
});

//  Show All Products
Route::get('/product', [ProductController::class, 'index'])->name('product.list');

//  Show Single Product Details
Route::get('/product/{id}', [ProductController::class, 'show'])->name('product.details');

//  Category Page - Show Only Categories (No Products)
Route::get('/category', function () {
    $categories = Category::all();
    return view('category', ['categories' => $categories]);
})->name('category.list');

//  Show Products by Category (Clicking a Category Filters Products)
Route::get('/category/{id}', function ($id) {
    $products = Product::where('categorie_id', $id)->get();
    return view('product', ['products' => $products]);
})->name('category.products');

// Authentication Routes
Route::get('/register', [UserController::class, 'showRegister'])->name('register');
Route::post('/register', [UserController::class, 'register']);
Route::get('/login', [UserController::class, 'showLogin'])->name('login');
Route::post('/login', [UserController::class, 'login']);
Route::get('/profile', [UserController::class, 'profile'])->middleware('auth');
Route::get('/logout', [UserController::class, 'logout'])->name('logout');

//  News Page - Show 404 Error
Route::get('/news', function () {
    abort(404); // Show 404 error page
})->name('news');

//  Cart & Checkout Routes (Fixed)
Route::get('/cart', [CartController::class, 'index'])->name('cart');
Route::post('/cart/add/{id}', [CartController::class, 'addToCart'])->name('cart.add');
Route::get('/cart/remove/{id}', [CartController::class, 'removeFromCart'])->name('cart.remove');
Route::post('/cart/update/{id}', [CartController::class, 'updateCart'])->name('cart.update');


Route::get('/checkout', [CheckoutController::class, 'index'])->name('checkout');
Route::post('/checkout', [CheckoutController::class, 'process'])->name('checkout.process');

// Contact & About Pages
Route::get('/contact', function () {
    return view('contact');
})->name('contact');

Route::get('/about', function () {
    return view('about');
})->name('about');

// Orders
Route::get('/dashboard/orders', [OrderController::class, 'index'])->name('dashboard.orders');

// Wishlist
Route::get('/wishlist', [WishlistController::class, 'index'])->name('wishlist');
Route::get('/wishlist/add/{id}', [WishlistController::class, 'add'])->name('wishlist.add');
Route::get('/wishlist/remove/{id}', [WishlistController::class, 'remove'])->name('wishlist.remove');

// Reviews
Route::post('/product/{id}/review', [ReviewController::class, 'store'])->name('review.store');


