<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $table = 'orders';

    // relationship one to many
    public function details()
    {
//        $test = $this->hasMany('App\OrderDetail', 'order_id', 'id');
        return $this->hasMany('App\OrderDetail', 'order_id', 'id');
    }
    // DN quan he dl
    public function user()
    {
        return $this->belongsTo('App\User');
    }

}
