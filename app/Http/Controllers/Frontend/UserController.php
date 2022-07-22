<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function register (){

       return view('auth.register');

    }


    /**
     * User login view
     * @method get
     *
     */
    public function login(){
        return view('auth.login');
    }


    /**
     * User login function
     * @method post
     * $parameter
     * $request
     *
     */
    public function userLogin(Request $request){
//       dd($request->all());
     return view('welcome');
    }


}
