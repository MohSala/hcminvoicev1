<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Invoice extends Model
{
    //
    protected $table = 'newinvoice';
    protected $fillable = ['orgid','invoiceName','status','type','created_by'];

    public function organization() 
    {
    	return $this->belongsTo('\App\Organization', 'orgid');
	}

	public function item()
	{
		return $this->hasMany('\App\Item','invoice_id');
	}

    public function createdBy() 
    {
        return $this->belongsTo('\App\User', 'created_by');
    }

}
