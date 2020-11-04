<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Detalle_venta extends Model
{
    protected $table = 'detalle_venta';
    
    protected $fillable = ['venta_id','id_menu','cantidad','precio_venta','status'];

    public function ventas()
    {
    	return $this->belongsTo('App\Ventas', 'venta_id', 'id');
    }
    
    public function menu()
    {
    	return $this->belongsTo('App\Menu', 'id_menu', 'id');
    }
}
