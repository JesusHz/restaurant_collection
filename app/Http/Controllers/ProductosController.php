<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Productos;
use App\Categorias_productos;
use App\Proveedores;

class ProductosController extends Controller
{
    public function __construct()
    {
        $this->middleware('usuarioAdminSupervisor');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $prodcutos = Productos::where('status', 1)
                  ->orderBy('id')->get();         
        return view('Productos.index')->with('productos', $prodcutos);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categorias = Categorias_productos::where('status', 1)->orderBy('nombre')->get();
        $proveedores = Proveedores::where('status', 1)->orderBy('nombre')->get();
        return view('Productos.create')
                ->with('categorias',$categorias)
                ->with('proveedores',$proveedores);
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
        Productos::create($datos);
        return redirect('/productos');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $producto = Productos::find($id);
        return view('Productos.read')->with('producto', $producto);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $producto = Productos::find($id);
        $categorias = Categorias_productos::where('status', 1)->orderBy('nombre')->get();
        $proveedores = Proveedores::where('status', 1)->orderBy('nombre')->get();
        return view('Productos.edit')
                ->with('producto',$producto)
                ->with('categorias_productos',$categorias)
                ->with('proveedores',$proveedores);
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
        $producto = Productos::find($id);
        $producto->update($datos);
        return redirect('/productos');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $producto = Productos::find($id);
        $producto->status = 0;
        $producto->save();
        return redirect('/productos');
    }
}
