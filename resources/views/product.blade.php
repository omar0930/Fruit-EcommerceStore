@extends('Layouts.master')

@section('title', 'Products')

@section('content')
<div class="product-section mt-150 mb-150">
    <div class="container">
        <h2>Our Products</h2>
        <div class="row">
            @foreach($products as $product)
                <div class="col-lg-4 col-md-6">
                    <div class="single-product-item text-center">
                        <a href="{{ route('product.details', ['id' => $product->id]) }}">
                            <img src="{{ asset($product->imagepath) }}" style="max-width: 250px; max-height: 250px;">
                        </a>
                        <h3>{{ $product->name }}</h3>
                        <p>${{ $product->price }}</p>

                        
                        <form action="{{ route('cart.add', ['id' => $product->id]) }}" method="POST">
                            @csrf
                            <button type="submit" class="btn btn-primary">Add to Cart</button>
                        </form>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</div>
@endsection
