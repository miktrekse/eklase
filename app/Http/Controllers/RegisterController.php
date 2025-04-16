<?php

namespace App\Http\Controllers;
use Illuminate\Validation\Rules\Password;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Models\User;

class RegisterController extends Controller
{
    public function create(Request $request) {
        return view("auth.register");
}
public function store(Request $request) {
    $validated = $request->validate([
        "first_name" => ["required", "max:255"],
        "last_name" => ["required", "max:255"],
        "email" => ["required", "email", Rule::unique('users', 'email')],
        "password" => ["required", "confirmed", Password::min(6)->numbers()->letters()->symbols()]
    ]);
      
    $user = User::create($validated);
    Auth::login($user);
    return redirect("/");
  }
}