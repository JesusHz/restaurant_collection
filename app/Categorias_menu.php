<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Categorias_menu extends Model
{
    protected $table = 'categorias_menu';
    
    protected $fillable = ['nombre','descripcion','status'];
}
