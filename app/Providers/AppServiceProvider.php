<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Models\Category;
use App\Policies\CategoryPolicy;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
//    protected $policies = [
//        'App\Model' => 'App\Models\ModelPolicy',
//        Category::class=>CategoryPolicy::class,
//    ];
    public function register()
    {
//        $this->registerPolicy();
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }
}
