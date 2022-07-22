<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
<<<<<<< HEAD
use App\Http\Controllers\Frontend\UserController;
=======
>>>>>>> main

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

<<<<<<< HEAD
Route::middleware(['middleware' => 'auth'])->group(function () {
    // return view('home');



});

Route::get('register', [UserController::class, 'register'])->name('register');
Route::get('login', [UserController::class, 'login'])->name('login');
Route::post('login', [UserController::class, 'userLogin'])->name('user.login');




=======
Route::middleware(['middleware' => 'auth', 'domain'])->group(function () {
    // return view('home');
    Route::view('/home/{path?}', 'home')->where('/home', '.*');
    Route::view('/home', 'home')->where('/home', '.*');
    
});

>>>>>>> main
// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
