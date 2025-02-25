@extends('Layouts.master')

@section('content')
<div class="category-section mt-150 mb-150">
    <div class="container">
        <h2>Browse Categories</h2>
        <div class="row">
            @foreach($categories as $category)
                <div class="col-lg-4 col-md-6 text-center">
                    <div class="single-category-item">
                        <div class="category-image">
                            <a href="{{ route('category.products', ['id' => $category->id]) }}">
                                <img src="{{ asset($category->imagepath) }}" 
                                    style="max-height: 250px; min-height: 250px;" alt="{{ $category->name }}">
                            </a>
                        </div>
                        <h3>{{ $category->name }}</h3>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</div>
@endsection
