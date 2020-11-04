<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Entidades;
use App\Municipios;

class InicioController extends Controller
{
    public function __construct()
    {
        $this->middleware('web');
    }

    public function iniciar ()
    {
        return view('index');
    }

    public function busca_entidades ($id_pais)
    {
        $entidades = Entidades::select('id','nombre')->where('id_pais',$id_pais)->get();
        return $entidades;
    }

    public function busca_municipios ($id_entidad)
    {
        $municipios = Municipios::select('id','nombre')->where('id_entidad',$id_entidad)->get();
        return $municipios;
    }
}
