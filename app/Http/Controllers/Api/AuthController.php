<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use http\Env\Response;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{

    public function login(Request $request)
    {
        try{
            $request->validate([
                'email' => 'email|required',
                'password' => 'required'
            ]);

            $credentials = request(['email','password']);
            if (!Auth::attempt($credentials)){
                return response()->json([
                   'status' => 500,
                    'message' => 'Unauthorized'
                ]);
            }

            $user = Auth::user();

            //it will generate new token each time at every login
            $tokenResult = $user->createToken('authToken')->plainTextToken;
            return  response()->json([
                'status' => 200,
                'access_token'=> $tokenResult,
                'token_type' => 'Bearer'
            ]);
        }catch (Exception $error){
            return response()->json([
                'status' => 500,
                'message' => 'Error in Login',
                'error' => $error,
            ]);
        }
    }
}
