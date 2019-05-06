<?php

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


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/profile', 'ProfileController@profile');
Route::post('/addprofile', 'ProfileController@addprofile');
Route::get('/profile/edit/profile', [
	'uses' => 'ProfileController@edit',
	'as' => 'profile.edit'
]);
Route::post('/profile/update/profile/{user_id}', [
	'uses' => 'ProfileController@update',
	'as' => 'profile.update'
]);
Route::get('/', function () {
    return view('welcome');
});

