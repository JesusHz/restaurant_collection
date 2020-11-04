<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ventas extends Model
{
    protected $table = 'ventas';
    
    protected $fillable = ['id_cliente','restaurante_id','fecha','subtotal','iva','total','id_tipo_pago','user_id','status'];

    public function clientes ()
    {
    	return $this->belongsTo('App\Users', 'id_cliente', 'id');
    }
    
    public function users ()
    {
    	return $this->belongsTo('App\Users', 'user_id', 'id');
    }

    public function restaurantes ()
    {
    	return $this->belongsTo('App\Restaurantes', 'restaurante_id', 'id');
    }
    
    public function tipos_pago ()
    {
    	return $this->belongsTo('App\Tipos_pago', 'id_tipo_pago', 'id');
    }
}
