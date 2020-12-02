<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderDetail extends Model
{
    protected $table = 'order_detail'; // chi dinh ten CSDL

    public $timestamps = false;

    public function order()
    {
        return $this->belongsTo('App\Order', 'id', 'order_id');
    }
    public function orderDetail()
    {
        return $this->belongsTo('App\OrderDetail','id','product_id');
    }
    // DN quan he dl
    public function user()
    {
        return $this->belongsTo('App\User');
    }

}
