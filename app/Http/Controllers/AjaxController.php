<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Productos;
use App\Paises;
use App\Entidades;
use App\Municipios;

class AjaxController extends Controller
{
    public function __construct()
    {
        $this->middleware('usuarioAdminSupervisor');
    }

    public function formulario ()
    {
        $prodcutos = Productos::where('status', 1)
                  ->orderBy('id')->get();     
        $paises = Paises::where('status', 1)
                  ->orderBy('id')->get();       
        return view('ajax')->with('productos', $prodcutos)
                            ->with('paises',$paises);
    }

    public function actualizar ($tipo, $cantidad, $id)
    {
        if ($tipo == 1) {
            Productos::where('id',$id)->increment('existencia',$cantidad);
        } else
        {
            Productos::where('id',$id)->decrement('existencia',$cantidad);
        }

        $nva_cant = 0;
        $producto = Productos::where('id',$id)->first();
        $nva_cant = $producto->existencia;
        $html = "";
        $html .= "<h2>Producto: ".$producto->nombre."</h2>";
        $html .= "<h2>Nueva Cantidad: ".$nva_cant."</h2>";

        return $html;
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

    public function llenar_campos ($id)
    {
        $producto = Productos::where('id',$id)->first();
        $tot_exis = $producto->existencia;
        $pc = $producto->precio_compra;
        $html = "<br/>";
        $html .= "<div class='form-group'>
                    <label for='exis'>Existencia actual del producto: ".$tot_exis
                    ."</label></div>";
        $html .= "<div class='form-group'>
                    <label for='exis'>Cantidad para agregar a la existencia
                    actual:</label>
                    <input type='number' name='exis' id='exis' value='0'
                    placeholder='Ingresa Existencia'
                    class ='form-control'/>
                    </div>";
        $html .= "<div class='form-group'>
                    <label for='pc'>Precio Compra:</label>
                    <input type='text' name='pc' id='pc' value='".$pc."'
                        placeholder='Ingresa Precio de Compra' 
                        class='form-control'/>
                        </div>";
        return $html;
    }

    public function actualizar_prod ($id,$exis,$pc)
    {
        Productos::where('id',$id)->increment('existencia',$exis);
        $prod = Productos::find($id);
        $prod->precio_compra = $pc;
        $prod->save();

        $producto = Productos::where('id',$id)->first();
        $nom_prod = $producto->nombre;
        $tot_exis = $producto->existencia;
        $pc_n = $producto->precio_compra;
        $html="<h2>El producto ".$nom_prod." se actualizo de forma 
                correcta con los datos: <br/> Existencia: ".$tot_exis."<br/>Precio de Compra: ".$pc_n."</h2>";

        return $html;
    }
}
