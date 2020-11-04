<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Proveedores extends Model
{
    protected $table = 'proveedores';
    
    protected $fillable = ['nombre','rfc','razon_social','direccion','email','contacto','id_pais','id_entidad','municipio_id','cp','colonia','telefono','status'];

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
}
