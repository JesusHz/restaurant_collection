<?php

namespace App\Http\Middleware;

use Closure;

class MDusuAdminVendedor
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $usuario_actual = \Auth::user();
        //$usuario_actual = Session::get('usuarioactual');
        if(isset($usuario_actual)){
            if($usuario_actual->id_tipo_usu!=1 and $usuario_actual->id_tipo_usu!=3){ //||$usuario_actual->id_tipo_usu!=2
                return redirect('sin_acceso6');
            }
        }else
        return redirect('login');

        return $next($request);
    }
}
