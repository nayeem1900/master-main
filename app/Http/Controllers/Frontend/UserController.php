<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

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
    
        if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {

            return redirect('/');
           
         }

         return back()->withInput();

     
    }


}
