<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Categorias_productos extends Model
{
    protected $table = 'categorias_productos';
    
    protected $fillable = ['nombre','descripcion','status'];
}
