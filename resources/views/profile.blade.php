@extends('Layouts.master')

@section('title', 'Profile')

@section('content')
<div class="d-flex justify-content-center align-items-center" style="min-height: 80vh;">
    <div class="card p-4 shadow-lg text-center" style="width: 400px; border-radius: 10px;">
        <h2>Profile</h2>
        <p><strong>Name:</strong> {{ $user->name }}</p>
        <p><strong>Email:</strong> {{ $user->email }}</p>
        <p><strong>Joined:</strong> {{ $user->created_at->format('d M Y') }}</p>
        <a href="{{ route('logout') }}" class="btn btn-danger w-100">Logout</a>
    </div>
</div>
@endsection
