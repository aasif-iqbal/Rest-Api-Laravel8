<?php

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

/*
To protect routes so that all incoming requests must be authenticated, you should attach the sanctum
authentication guard to your API routes within your routes/api.php file. This guard will ensure that
incoming requests are authenticated as either a stateful authenticated requests from your SPA or
contain a valid API token header if the request is from a third party:
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

//http://127.0.0.1:8000/api/authenticate
Route::post('/authenticate', [\App\Http\Controllers\Api\AuthController::class, 'login' ]);

Route::middleware('auth:sanctum')->group(function (){
    Route::apiResource('/projects', \App\Http\Controllers\Api\ProjectsController::class);
});


