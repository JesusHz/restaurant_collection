<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Productos extends Model
{
    protected $table = 'productos';
    
    protected $fillable = ['nombre','descripcion','existencia','precio_compra','stock','id_categoria','id_proveedor','status'];

    public function categorias_productos ()
    {
    	return $this->belongsTo('App\Categorias_productos', 'id_categoria', 'id');
    }
    
    public function proveedores ()
    {
    	return $this->belongsTo('App\Proveedores', 'id_proveedor', 'id');
    }
}
