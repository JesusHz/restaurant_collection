<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Fotos_menu extends Model
{
    protected $table = 'fotos_menu';
    
    protected $fillable = ['id_menu','ruta','status'];

    public function menu ()
    {
    	return $this->belongsTo('App\Menu', 'id_menu', 'id');
    }
}
