<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Coupon extends Model
{
    // DN quan he dl
    public function user()
    {
        return $this->belongsTo('App\User');
    }

}
