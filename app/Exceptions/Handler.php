<?php

namespace App\Exceptions;

use Illuminate\Auth\Access\AuthorizationException;
use Illuminate\Auth\AuthenticationException;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Database\QueryException;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Illuminate\Validation\ValidationException;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Throwable;

class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that are not reported.
     *
     * @var array
     */
    protected $dontReport = [
        //
    ];

    /**
     * A list of the inputs that are never flashed for validation exceptions.
     *
     * @var array
     */
    protected $dontFlash = [
        'current_password',
        'password',
        'password_confirmation',
    ];

    /**
     * Register the exception handling callbacks for the application.
     *
     * @return void
     */
    public function register()
    {
        $this->reportable(function (Throwable $e) {
            //
        });
    }

    public function render($request, Throwable $e)
    {
        if ($request->is('api*'))
        {
            if ($e instanceof ValidationException)
            {
                return response([
                    'status'=> 'Error',
                    'error'=> $e->errors()
                ], 422);        //422 Unprocessable Entity
            }
            if ($e instanceof AuthorizationException)
            {
                return response([
                    'status' => 'Error',
                    'error'=>$e->getMessage()  //This action is unauthorized
                ], 403);    // 403 Forbidden
            }
            if ($e instanceof ModelNotFoundException)
            {
                return response([
                    'status' => 'Error',
                    'error'=> 'Result Not Found'
                    //'error'=>$e->getMessage()
                ], 404);
            }
            if ($e instanceof  NotFoundHttpException)
            {
                return response([
                    'status' => 'Error',
                    'error'=> 'URL Not Found'
                ], 404);
            }

            //if Sanctum user token is error or invalid
            if ($e instanceof  AuthenticationException)
            {
                {
                    return response([
                        'status' => 'Error',
                        'error'=>$e->getMessage()
                    ], 401);            //unauthorized
                }
            }

            if($e instanceof QueryException)
            {
                  return response([
                      'status' => 'Error',
                      'error'=>'Database Connection refused errors'
                  ], 502);            //Connection refused errors
            }
            //dd($e);
            return response([
                'status'=>500,
                'error'=>'Something Went Wrong'
            ], 500);



        }
        return parent::render($request, $e);
    }
}
