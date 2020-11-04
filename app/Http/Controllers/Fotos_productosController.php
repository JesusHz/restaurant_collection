<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Controller;
use Storage;
use App\Fotos_productos;
use App\Productos;
use App\Http\Requests; 


class Fotos_productosController extends Controller
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
        $fotos_productos = Fotos_productos::where('status', 1)
                  ->orderBy('id')->get();          
        return view('Fotos_productos.index')->with('fotos_productos', $fotos_productos);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $productos = Productos::where('status', 1)
                  ->orderBy('nombre')->get();
        return view('Fotos_productos.create')
                ->with('productos',$productos);
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
        $ruta_archivo = "../storage/fotografias_productos/";
        $hora = date("h:m:s");
        $fecha = date("d-m-y");
        $prefijo = $fecha."_".$hora;
        $archivo = $request->file('img_foto');
        $input = array('img_foto' => $archivo);
        $reglas = array('img_foto' => 'required|mimes:jpeg,png,jpg|max:50000');
        $validacion = Validator::make($input, $reglas);
        if ($validacion->fails()) {
            return view('error')->with('msj', 'ERROR DE VALIDACION DE ARCHIVO');
        } else
        {
            $ruta = $prefijo."_".$archivo->getClientOriginalName();
            $respuesta = Storage::disk("fotografias_productos")->put($ruta,\File::get($archivo));
            if ($respuesta) {
                Fotos_productos::create(['producto_id' => $datos["producto_id"],
                                            'ruta' => $ruta_archivo.$ruta,
                                            'status' => 1,]);
                
                return redirect('/fotos_productos');
            } else
            {
                return view('error') -> with('msj','ERROR AL GUARDAR EL ARCHIVO');
            }
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $fotos_productos = Fotos_productos::find($id);
        return view('Fotos_productos.read')->with('fotos_productos', $fotos_productos);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $fotos_productos = Fotos_productos::find($id);
        $productos = Productos::where('status', 1)
                  ->orderBy('nombre')->get();
        return view('Fotos_productos.edit')
               ->with('fotos_productos', $fotos_productos)
               ->with('productos',$productos);
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
        $fotos_productos = Fotos_productos::find($id);
	    $datos = $request->all();
        $ruta_archivo = "../storage/fotografias_productos/";
        $hora = date("h:m:s");
        $fecha = date("d-m-y");
        $prefijo = $fecha."_".$hora;
        $archivo = $request->file('img_foto');
        $input = array('img_foto' => $archivo);
        $reglas = array('img_foto' => 'required|mimes:jpeg,png,jpg|max:50000');
        $validacion = Validator::make($input, $reglas);
        if ($validacion->fails()) {
            return view('error')->with('msj', 'ERROR DE VALIDACION DE ARCHIVO');
        } else
        {
            $ruta = $prefijo."_".$archivo->getClientOriginalName();
            $respuesta = Storage::disk("fotografias_productos")->put($ruta,\File::get($archivo));
            if ($respuesta) {
                $fotos_productos->ruta = $ruta_archivo.$ruta;
                $fotos_productos->update($datos);
                
                return redirect('/fotos_productos');
            } else
            {
                return view('error') -> with('msj','ERROR AL GUARDAR EL ARCHIVO');
            }
        }
        if ($validacion->fails()) {
            return view('error')->with('msj', 'ERROR DE VALIDACION DE ARCHIVO');
        } else
        {
            $ruta = $prefijo."_".$archivo->getClientOriginalName();
            $respuesta = Storage::disk("fotografias_productos")->put($ruta,\File::get($archivo));
            if ($respuesta) {
                $fotos_productos->ruta = $ruta_archivo.$ruta;
                $fotos_productos->update($datos);
                
                return redirect('/fotos_productos');
            } else
            {
                return view('error') -> with('msj','ERROR AL GUARDAR EL ARCHIVO');
            }
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $fotos_productos = Fotos_productos::find($id);
        $fotos_productos->status = 0;
        $fotos_productos->save();
        return redirect('/fotos_productos');
    }
}
