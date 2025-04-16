<?php
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\SessionController;
use App\Http\Controllers\EklaseController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});
Route::get('/eklases/create', [EklaseController::class, 'create'])->middleware("auth");
Route::get('/eklases', [EklaseController::class, 'index'])->middleware("auth");

Route::post('/eklases', [EklaseController::class, 'store'])->middleware("auth");
Route::get('/eklases/{eklase}', [EklaseController::class, 'show'])->middleware("auth");
Route::get('/eklases/{eklase}/edit', [EklaseController::class, 'edit'])->middleware("auth");
Route::put('/eklases/{eklase}', [EklaseController::class, 'update'])->middleware("auth");
Route::delete('/eklases/{eklase}', [EklaseController::class, 'destroy'])->middleware("auth");

Route::get('/register', [RegisterController::class, 'create'])->middleware("guest");
Route::post('/register', [RegisterController::class, 'store']);

Route::post('/logout', [SessionController::class, 'destroy']);
Route::get('/login', [SessionController::class, 'create'])->middleware("guest")->name("login");
Route::post('/login', [SessionController::class, 'store']);
