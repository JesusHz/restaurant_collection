<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Proveedores;
use App\Paises;
use App\Entidades;
use App\Municipios;

class ProveedoresController extends Controller
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
        $proveedores = Proveedores::where('status', 1)
                  ->orderBy('id')->get();         
        return view('Proveedores.index')->with('proveedores', $proveedores);
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
        return view('Proveedores.create')
                ->with('paises',$paises)
                ->with('entidades',$entidades)
                ->with('municipios',$municipios);
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
        Proveedores::create($datos);
        return redirect('/proveedores');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $proveedor = Proveedores::find($id);
        return view('Proveedores.read')->with('proveedor', $proveedor);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $proveedor = Proveedores::find($id);
        $paises = Paises::where('status', 1)->orderBy('nombre')->get();
        $entidades = Entidades::where('status', 1)->orderBy('nombre')->get();
        $municipios = Municipios::where('status', 1)->orderBy('nombre')->get();
        return view('Proveedores.edit')
                ->with('proveedor',$proveedor)
                ->with('paises',$paises)
                ->with('entidades',$entidades)
                ->with('municipios',$municipios);
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
        $proveedor = Proveedores::find($id);
        $proveedor->update($datos);
        return redirect('/proveedores');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $proveedor = Proveedores::find($id);
        $proveedor->status = 0;
        $proveedor->save();
        return redirect('/proveedores');
    }
}
