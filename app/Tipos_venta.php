<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tipos_venta extends Model
{
    protected $table = 'tipos_venta';
    
    protected $fillable = ['nombre','status'];
}
