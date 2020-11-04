<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Controller;
use Storage;
use App\Fotos_menu;
use App\Menu;
use App\Http\Requests; 

class Fotos_menuController extends Controller
{
    public function __construct()
    {
        $this->middleware('usuarioAdminCliente');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $fotos_menu = Fotos_menu::where('status', 1)
                  ->orderBy('id')->get();          
        return view('Fotos_menu.index')->with('fotos_menu', $fotos_menu);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $menu = Menu::where('status', 1)
                  ->orderBy('nombre')->get();
        return view('Fotos_menu.create')
                ->with('menu',$menu);
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
        $ruta_archivo = "../storage/fotografias_menu/";
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
            $respuesta = Storage::disk("fotografias_menu")->put($ruta,\File::get($archivo));
            if ($respuesta) {
                Fotos_menu::create(['id_menu' => $datos["id_menu"],
                                            'ruta' => $ruta_archivo.$ruta,
                                            'status' => 1,]);
                
                return redirect('/fotos_menu');
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
        $foto_menu = Fotos_menu::find($id);
        return view('Fotos_menu.read')->with('foto_menu', $foto_menu);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $foto_menu = Fotos_menu::find($id);
        $menu = Menu::where('status', 1)
                  ->orderBy('nombre')->get();
        return view('Fotos_menu.edit')
               ->with('foto_menu', $foto_menu)
               ->with('menu',$menu);
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
        $fotos_menu = Fotos_menu::find($id);
	    $datos = $request->all();
        $ruta_archivo = "../storage/fotografias_menu/";
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
            $respuesta = Storage::disk("fotografias_menu")->put($ruta,\File::get($archivo));
            if ($respuesta) {
                $fotos_menu->ruta = $ruta_archivo.$ruta;
                $fotos_menu->update($datos);
                
                return redirect('/fotos_menu');
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
            $respuesta = Storage::disk("fotografias_menu")->put($ruta,\File::get($archivo));
            if ($respuesta) {
                $fotos_menu->ruta = $ruta_archivo.$ruta;
                $fotos_menu->update($datos);
                
                return redirect('/fotos_menu');
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
        $foto_menu = Fotos_menu::find($id);
        $foto_menu->status = 0;
        $foto_menu->save();
        return redirect('/fotos_menu');
    }
}
