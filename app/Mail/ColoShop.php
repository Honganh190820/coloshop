<?php

namespace App\Mail;
use App\Order;
use App\OrderDetail;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;
/**thêm dòng này*/
class ColoShop extends Mailable
{
    use Queueable, SerializesModels;
    public $order;
    public $orderDetail = [];
    /**
     * Create a new message instance.
     *
     * @return void
     */

    public function __construct(Order $order, $orderDetail)
    {

        $this->order = $order;
        $this->orderDetail = $orderDetail;

    }

    /**
     * Build the message.
     *
     return $this
     */
    public function build()
    {
        return $this->view('gmails.shopping');

    }
}
