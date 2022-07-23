<?php

namespace App\Http\Controllers\Api\Backend;

use App\Http\Controllers\Controller;
use App\Models\Api\UserExtend;
use App\Models\User;
use Illuminate\Http\Request;
use Nette\Utils\Random;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function login(Request $request){

        // return Validator::make($request->all(), [
        //     'email' => ['required', 'string', 'max:255'],
        //     'password' => ['required'],
        // ]);


        if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            // Authentication passed...

            $user = Auth::user();
            return $request->user()->createToken('Access Token')->accessToken;

            return $token = $user->createToken('access')->accessToken;
   
         }

         return "Unathorize";
      

    }

    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

       $Extend_props = $request->extendProps;

       $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => bcrypt($request->password),
            'status' =>'1',
            'unique_id'=> Random::generate(10),
            'extend_props'=> isset($request->extendProps) ? json_encode($Extend_props) : null


        ]);

       if(isset($request->extendProps) && $user && count($Extend_props) > 0){
           foreach ($Extend_props as $key => $props ){
               $UserExtend= [

                   'user_id'=> $user->id,
                   'field_name' => $key,
                   'value' => $props
               ];

               UserExtend::create( $UserExtend );

           }

       }


       return  "Success";




    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
