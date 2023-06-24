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


Route::post('/Student', 'StudentController@store');
Route::put('/Student/{id}', 'StudentController@update');
Route::get('/Student', 'StudentController@show');
Route::get('/Student/{id}', 'StudentController@detail');

Route::post('/Grade', 'GradeController@store');
Route::put('/Grade/{id}', 'GradeController@update');
Route::get('/Grade', 'GradeController@show');
Route::get('/Grade/{id}', 'GradeController@detail');

Route::post('/Score', 'ScoreController@store');
Route::put('/Score/{id}', 'ScoreController@update');
Route::get('/Score', 'ScoreController@show');
Route::get('/Score/{id}', 'ScoreController@detail');

