<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Input;

use App\Models\Api;
use App\User;

class MobileController extends Controller
{

    public function show(Request $request)
    {
        //
        // $api = Api::find($request->email);
        // if (is_null($api)) {
        //     return $this->sendError('Users not found.');
        // }
        $ceklogin = \DB::table('android_users')->where('email', $request->email)->first();
        // var_dump($ceklogin->password); die;
        if(password_verify($request->password, $ceklogin->password)){
            // $api = ['coba' => 'haii'];
            return response()->json([
                "success" => true,
                "status" => 200,
                "message" => "Users retrieved successfully.",
                "data" => $ceklogin
            ]);
        }else{
            return response()->json([
                "success" => false,
                "status" => 403,
                "message" => "Wrong password.",
            ]);
        }
        
    }

    public function register(Request $request)
    {
        // Api::create([
        //     'name' => $request->name,
        //     'email' => $request->email,
        //     'password' => bcrypt($request->password),
        //     'remember_token' => sha1(rand(0, 1000))
        // ]);

        \DB::table('android_users')->insert([
            'name' => $request->name,
            'email' => $request->email,
            'password' => bcrypt($request->password),
            'remember_token' => sha1(rand(0, 1000)),
        ]);

        $register = \DB::table('android_users')->where('email', $request->email)->first();
        return response()->json([
            "success" => false,
            "status" => 200,
            "message" => "Register success.",
            "data" => $register
        ]);
    }

}