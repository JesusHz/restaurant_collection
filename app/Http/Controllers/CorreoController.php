<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Storage;
use App\Order;
use App\Mail\OrderShipped;
use App\Mail\Message;
use App\Mail\Welcome;
use Illuminate\Support\Facades\Mail;

class CorreoController extends Controller
{
    public function __construct()
    {
        $this->middleware('web');
    }

    public function create ()
    {
        return view('Correo.form_mail');
    }

    public function enviar (Request $request)
    {
        $pathToFile = "";
        $containFile = false;

        $nombre = $request->input("nombre");
        $destinatario = $request->input("destinatario");
        $asunto = $request->input("asunto");
        $contenido = $request->input("contenido_email");

        $data = array('nombre' => $nombre,'contenido'=>$contenido);
        $respuesta = Mail::send('Correo.plantilla_correo', $data, function($message) use ($nombre, $asunto, $destinatario, $containFile, $pathToFile){
            $message->from('jclementeh@toluca.tecnm.mx','Jesus Hernandez');
            $message->to($destinatario)->subject($asunto);
        });

        if (!$respuesta) {
            return view("Correo.mensaje")
                //->with('var','1')
                //->with('ruta_boton','form_enviar_correo')
                //->with('mensaje_boton','Nuevo')
                ->with('msj','Correo Enviado Correctamente');
        }
        else
        {
            return view("Correo.mensaje")
                //->with('var','2')
                //->with('ruta_boton','home')
                //->with('mensaje_boton','Ir al home')
                ->with('msj','Error al enviar correo');
        }
    }
}
