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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

//LOGIN REGISTER
Route::post('/register', 'UserController@register');
Route::post('/login', 'UserController@login');


Route::middleware(['jwt.verify'])->group(function () {
    Route::get('/login_check', 'UserController@getAuthenticatedUser');


    // Route::group(['middleware' => ['api.admin']], function () {

        Route::post('/Student', 'StudentController@store');
        Route::put('/Student/{id}', 'StudentController@update');
        Route::get('/Student', 'StudentController@show');
        Route::get('/Student/{id}', 'StudentController@detail');
        Route::delete('/Student/{id}', 'StudentController@delete');


        Route::post('/Grade', 'GradeController@store');
        Route::put('/Grade/{id}', 'GradeController@update');
        Route::get('/Grade', 'GradeController@show');
        Route::get('/Grade/{id}', 'GradeController@detail');
        Route::delete('/Grade/{id}', 'GradeController@delete');


        Route::post('/Score', 'ScoreController@store');
        Route::put('/Score/{id}', 'ScoreController@update');
        Route::get('/Score', 'ScoreController@show');
        Route::get('/Score/{id}', 'ScoreController@detail');
        Route::delete('/Score/{id}', 'ScoreController@delete');

   // });
});
