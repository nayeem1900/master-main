<?php

use App\Http\Controllers\MenuController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware(['domain'])->group(function () {
    Route::get('/user', [MenuController::class, "index"])->name('menus');   
});

Route::middleware('domain')->get('/user', function (Request $request) {
    return User::all();
});

Route::middleware(['auth:sanctum' => 'auth', 'domain'])->group(function () {
    Route::get('/menus', [MenuController::class, "index"])->name('menus');   
});

