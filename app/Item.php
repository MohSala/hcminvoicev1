<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
    //
    protected $table = 'items';
    protected $fillable = 
    ['productName','description','quantity', 'unitcost','discount','total'
    ,'dtotal','subtotal','servicetotal','vattotal','gtotal','invoice_id','currency','rate','validity'];

    public function invoice()
{
	return $this->belongsTo('\App\Invoice','invoice_id');
}
}

