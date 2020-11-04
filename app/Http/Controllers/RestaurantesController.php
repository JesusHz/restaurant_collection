<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Restaurantes;
use App\Paises;
use App\Entidades;
use App\Municipios;
use App\Tipos_usuario;

class RestaurantesController extends Controller
{
    public function __construct()
    {
        $this->middleware('usuarioAdmin');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $restaurantes = Restaurantes::where('status', 1)
                  ->orderBy('id')->get();         
        return view('Restaurantes.index')->with('restaurantes', $restaurantes);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $paises = Paises::where('status', 1)->orderBy('nombre')->get();
        $entidades = Entidades::where('status', 1)->orderBy('nombre')->get();
        $municipios = Municipios::where('status', 1)->orderBy('nombre')->get();
        $tipos_usuario = Tipos_usuario::where('status', 1)->orderBy('nombre')->get();
        return view('Restaurantes.create')
                ->with('paises',$paises)
                ->with('entidades',$entidades)
                ->with('municipios',$municipios)
                ->with('tipos_usuario',$tipos_usuario);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $datos = $request->all();
        Restaurantes::create($datos);
        return redirect('/restaurantes');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $restaurante = Restaurantes::find($id);
        return view('Restaurantes.read')->with('restaurante', $restaurante);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $restaurante = Restaurantes::find($id);
        $paises = Paises::where('status', 1)->orderBy('nombre')->get();
        $entidades = Entidades::where('status', 1)->orderBy('nombre')->get();
        $municipios = Municipios::where('status', 1)->orderBy('nombre')->get();
        $tipos_usuario = Tipos_usuario::where('status', 1)->orderBy('nombre')->get();
        return view('Restaurantes.edit')
                ->with('restaurante',$restaurante)
                ->with('paises',$paises)
                ->with('entidades',$entidades)
                ->with('municipios',$municipios)
                ->with('tipos_usuario',$tipos_usuario);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $datos = $request->all();
        $restaurante = Restaurantes::find($id);
        $restaurante->update($datos);
        return redirect('/restaurantes');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $restaurante = Restaurantes::find($id);
        $restaurante->status = 0;
        $restaurante->save();
        return redirect('/restaurantes');
    }
}
