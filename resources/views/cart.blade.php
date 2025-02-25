@extends('Layouts.master')

@section('title', 'Cart')

@section('content')
<div class="cart-section mt-150 mb-150">
    <div class="container">
        <h2>Your Shopping Cart</h2>

        @if(session('success'))
            <div class="alert alert-success">{{ session('success') }}</div>
        @endif

        @if(empty(session('cart')) || count(session('cart')) == 0)
            <p>Your cart is empty.</p>
        @else
            <table class="table">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Image</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Total</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach(session('cart') as $id => $item)
                        <tr>
                            <td>{{ $item['name'] }}</td>
                            <td><img src="{{ asset($item['image']) }}" style="max-width: 50px;"></td>
                            <td>
                                <form action="{{ route('cart.update', $id) }}" method="POST">
                                    @csrf
                                    <input type="number" name="quantity" value="{{ $item['quantity'] }}" min="1" class="form-control" style="width: 60px; display: inline-block;">
                                    <button type="submit" class="btn btn-info btn-sm">Update</button>
                                </form>
                            </td>
                            <td>${{ $item['price'] }}</td>
                            <td>${{ $item['price'] * $item['quantity'] }}</td>
                            <td>
                                <a href="{{ route('cart.remove', $id) }}" class="btn btn-danger btn-sm">Remove</a>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>

            <a href="{{ route('checkout') }}" class="btn btn-success">Proceed to Checkout</a>
        @endif
    </div>
</div>
@endsection
