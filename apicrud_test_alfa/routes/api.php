<?php

use App\Http\Controllers\ClienteController;
use App\Http\Controllers\CiudadController;
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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


Route::get('/clientes', [ClienteController::class, 'index']);

Route::post('/cliente', [ClienteController::class, 'store']);

Route::get('/clientes/{id}', [ClienteController::class, 'show']);

Route::put('/clientes/{id}', [ClienteController::class, 'update']);

Route::delete('/clientes/{id}', [ClienteController::class, 'destroy']);


Route::get('/ciudads', [CiudadController::class, 'index']);

Route::post('/ciudad', [CiudadController::class, 'store']);

Route::get('/ciudads/{id}', [CiudadController::class, 'show']);

Route::put('/ciudads/{id}', [CiudadController::class, 'update']);

Route::delete('/ciudads/{id}', [CiudadController::class, 'destroy']);