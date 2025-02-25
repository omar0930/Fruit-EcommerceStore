@extends('Layouts.master')

@section('title', 'Product Details')

@section('content')
<div class="single-product mt-150 mb-150">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="single-product-img">
                    <img src="{{ asset($product->imagepath) }}" style="max-width: 400px; max-height: 400px;">
                </div>
            </div>
            <div class="col-md-7">
                <div class="single-product-content">
                    <h3>{{ $product->name }}</h3>
                    <p class="single-product-pricing"><span>Per Item</span> ${{ $product->price }}</p>
                    <p>{{ $product->description }}</p>

                    <!-- Add to Cart Form -->
                    <form method="POST" action="{{ route('cart.add', $product->id) }}">
                        @csrf
                        <input type="number" name="quantity" value="1" min="1">
                        <button type="submit" class="btn btn-primary">Add to Cart</button>
                    </form>

                    <!-- Wishlist Button (Added Here) -->
                    <a href="{{ route('wishlist.add', $product->id) }}" class="btn btn-warning mt-3">Add to Wishlist</a>
                </div>
            </div>
        </div>

        <!-- Reviews Section -->
        <div class="row mt-5">
            <div class="col-md-12">
                <h3>Customer Reviews</h3>

                <!-- Display Existing Reviews -->
                @if($product->reviews->count() > 0)
                    @foreach($product->reviews as $review)
                        <div class="review-box mb-3 p-3 border rounded">
                            <strong>{{ $review->user->name }}</strong>
                            <p>Rating: ⭐ {{ $review->rating }}/5</p>
                            <p>{{ $review->comment }}</p>
                        </div>
                    @endforeach
                @else
                    <p>No reviews yet. Be the first to leave a review!</p>
                @endif

                <!-- Review Form -->
                <h4>Add a Review</h4>
                <form action="{{ route('review.store', $product->id) }}" method="POST">
                    @csrf
                    <label>Rating (1-5):</label>
                    <input type="number" name="rating" min="1" max="5" required class="form-control mb-2">

                    <label>Comment:</label>
                    <textarea name="comment" required class="form-control mb-2"></textarea>

                    <button type="submit" class="btn btn-primary">Submit Review</button>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
