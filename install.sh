#!/bin/bash

composer create-project --prefer-dist laravel/laravel backend
cd backend
php artisan install:api

echo "Route::get('/test', function () { return response()->json(['message' => 'Laravel API test']); });" >> routes/api.php

cd ..
npm create vue@latest frontend -- --default