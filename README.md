# Laravel / Vue within docker compose

#### get repo
```bash
git clone https://github.com/savasick/laravel-vue-docker.git
cd laravel-vue-docker
```

#### install by bash script
```bash
bash install.sh
```

#
### manually
#### get fresh laravel
```bash
composer create-project --prefer-dist laravel/laravel backend # "^9.0" # choose Version
```

#### get fresh vue
```bash
npm create vue@latest frontend -- --default
```

#### create test api route for laravel
```bash
cd backend # at backend folder
php artisan install:api

echo "Route::get('/test', function () { return response()->json(['message' => 'Laravel API test']); });" >> routes/api.php
cd ..
```

#

#### start
```bash
docker-compose up -d --build
```

[Main   - http://localhost](http://localhost) \
[API   - http://localhost/api/test/](http://localhost/api/test/)
