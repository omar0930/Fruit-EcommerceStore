@extends('Layouts.master')

@section('title', 'About Us')

@section('content')
<div class="about-section mt-150 mb-150">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="about-img">
                    <img src="{{ asset('assets/img/feature-bg.jpg') }}" alt="Our Shop">
                </div>
            </div>
            <div class="col-lg-6">
                <div class="about-text">
                    <h2>About <span>Our Shop</span></h2>
                    <p>Welcome to our online store! We provide fresh and high-quality products with excellent customer service.</p>
                    <p>Located in **6th of October, Cairo, Egypt**, we aim to bring the best shopping experience to our customers.</p>
                    <p>For inquiries, reach us at **omar@github**.</p>
                    <a href="/" class="boxed-btn">Return to Home</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
