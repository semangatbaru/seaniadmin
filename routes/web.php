<?php

use Illuminate\Support\Facades\Route;

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
Route::get('/', 'App\Http\Controllers\web\LoginController@showFormLogin');
Route::get('login', 'App\Http\Controllers\web\LoginController@showFormLogin')->name('login');
Route::post('postLogin', 'App\Http\Controllers\web\LoginController@login')->name('postLogin');

Route::get('register', 'App\Http\Controllers\web\LoginController@showFormRegister')->name('register');
Route::post('postRegister', 'App\Http\Controllers\web\LoginController@register')->name('postRegister');


Route::group(['middleware' => 'auth'], function () {
 
    //home
    Route::get('home', 'App\Http\Controllers\web\HomeController@index')->name('home');

    //customer
    Route::get('customer', 'App\Http\Controllers\web\CustomerController@index')->name('customer');

    //info
    Route::get('info', 'App\Http\Controllers\web\BeritaController@index')->name('info');
    Route::post('postInfo', 'App\Http\Controllers\web\BeritaController@store')->name('postInfo');
    Route::get('deleteInfo/{id_berita}', 'App\Http\Controllers\web\BeritaController@delete')->name('deleteInfo');
    //logout
    Route::get('logout', 'App\Http\Controllers\web\LoginController@logout')->name('logout');
 
});



