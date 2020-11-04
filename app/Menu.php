<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    protected $table = 'menu';
    
    protected $fillable = ['nombre','descripcion','precio_venta','id_tipo_venta','id_categoria','id_proveedor','status'];

    public function categorias_menu ()
    {
    	return $this->belongsTo('App\Categorias_menu', 'id_categoria', 'id');
    }
    
    public function tipos_venta ()
    {
    	return $this->belongsTo('App\Tipos_venta', 'id_tipo_venta', 'id');
    }
}
