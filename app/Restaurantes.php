<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Restaurantes extends Model
{
    protected $table = 'restaurantes';
    
    protected $fillable = ['nombre','telefono','id_pais','id_entidad','municipio_id','id_tipo_usu','direccion','cp','colonia','email','username','password','status'];

    public function paises ()
    {
    	return $this->belongsTo('App\Paises', 'id_pais', 'id');
    }
    
    public function entidades ()
    {
    	return $this->belongsTo('App\Entidades', 'id_entidad', 'id');
    }
    
    public function municipios ()
    {
    	return $this->belongsTo('App\Municipios', 'municipio_id', 'id');
    }
    
    public function tipos_usuario ()
    {
    	return $this->belongsTo('App\Tipos_usuario', 'id_tipo_usu', 'id');
    }
}
