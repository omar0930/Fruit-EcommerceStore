@extends('Layouts.master')

@section('title', 'Home')

@section('content')
<div class="d-flex justify-content-center align-items-center" style="min-height: 50vh;">
    <div class="text-center">
        <h1>Welcome to Our E-Commerce Platform</h1>
        <p>Your one-stop shop for amazing products!</p>

        @guest
            <!-- If the user is NOT logged in, show login and register buttons -->
            <a href="{{ route('login') }}" class="btn btn-primary m-2">Sign In</a>
            <a href="{{ route('register') }}" class="btn btn-outline-primary m-2">Register</a>
        @else
            <!-- If the user IS logged in, show profile and logout buttons -->
            <a href="{{ route('profile') }}" class="btn btn-success m-2">My Profile</a>
            <a href="{{ route('logout') }}" class="btn btn-danger m-2">Logout</a>
        @endguest
    </div>
</div>

<!-- Categories Section -->
<div class="product-section mt-150 mb-150">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 offset-lg-2 text-center">
                <div class="section-title">    
                    <h3><span class="orange-text">Our</span> Categories</h3>
                    <p>Choose what you like.</p>
                </div>
            </div>
        </div>

        <div class="row">
            @foreach($categories as $item)
            <div class="col-lg-4 col-md-6 text-center">
                <div class="single-product-item">
                    <div class="product-image">
                        <a href="/product/{{$item->id}}">
                            <img src="{{ url($item->imagepath) }}"
                                style="max-height: 250px !important; min-height: 250px !important;"
                                alt="">
                        </a>
                    </div>
                    <h3>{{$item->name}}</h3>
                    <p>{{$item->description}}</p>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>
@endsection
