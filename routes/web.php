<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AlojamientosController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::view('profile','profile')->name('profile');
Route::resource('avatar', 'AvatarController');

Route::group(['middleware' => ['permission:ver_alojamientos|crear_alojamientos|editar_alojamientos|borrar_alojamientos']], function () {
    Route::resource('alojamientos', 'AlojamientosController');
    Route::post('alojamientos/update', 'AlojamientosController@update')->name('alojamientos.update');
    Route::get('alojamientos/destroy/{id}', 'AlojamientosController@destroy');
});




