<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/**
 * Middleware
 */

Route::group(['middleware' => 'web'], function () {

	Route::get('/', function () {
        return view('index');
    });
    
    Route::get('home', function () {
        return view('index');
    });
    
    Route::get('index', function () {
        return view('index');
    });

    Route::get('welcome', function () {
        return view('welcome');
    });

    Route::get('inicio', 'InicioController@iniciar');

    Route::post('login', 'Auth\LoginController@postLogin');

    Route::get('login', 'Auth\LoginController@getLogin');

    Route::post('register', 'Auth\RegisterController@postRegister');

    Route::get('register', 'Auth\RegisterController@getRegister');

    Route::post('register_partner', 'Auth\RegisterController@postRegisterPartner');

    Route::get('register_partner', 'Auth\RegisterController@getRegisterPartner');

    Route::post('enviar_correo', 'CorreoController@enviar');

    Route::get('form_enviar_correo', 'CorreoController@create');

    Route::get('busca_entidades_partner/{id_pais}', 'InicioController@busca_entidades');
    
    Route::get('busca_municipios_partner/{id_entidad}', 'InicioController@busca_municipios');

    //Auth::routes();
    
});

//Route::get('home','HomeController@home');
//Route::get('/home', 'HomeController@index')->name('home');

Route::group(['middleware' => 'auth'], function () {

    Route::get('logout', 'Auth\LoginController@getLogout');

    Route::get('cruds', 'CrudsController@cruds');

    Route::get('sin_acceso', function () {
        return view("Correo.mensaje")
                ->with('msj','Privilegios insuficientes para acceder a esta sección. Es necesario iniciar sesión como administrador para tener acceso a esta sección.');
    });
    
    Route::get('sin_acceso2', function () {
        return view("Correo.mensaje")
                ->with('msj','Privilegios insuficientes para acceder a esta sección. Es necesario iniciar sesión como supervisor para tener acceso a esta sección.');
    });

    Route::get('sin_acceso3', function () {
        return view("Correo.mensaje")
                ->with('msj','Privilegios insuficientes para acceder a esta sección. Es necesario iniciar sesión como vendedor para tener acceso a esta sección.');
    });

    Route::get('sin_acceso4', function () {
        return view("Correo.mensaje")
                ->with('msj','Privilegios insuficientes para acceder a esta sección. Es necesario iniciar sesión como cliente para tener acceso a esta sección.');
    });

    Route::get('sin_acceso5', function () {
        return view("Correo.mensaje")
                ->with('msj','Privilegios insuficientes para acceder a esta sección. Es necesario iniciar sesión como administrador/cliente para tener acceso a esta sección.');
    });

    Route::get('sin_acceso6', function () {
        return view("Correo.mensaje")
                ->with('msj','Privilegios insuficientes para acceder a esta sección. Es necesario iniciar sesión como administrador/vendedor para tener acceso a esta sección.');
    });
	
	Route::get('sin_acceso7', function () {
        return view("Correo.mensaje")
                ->with('msj','Privilegios insuficientes para acceder a esta sección. Es necesario iniciar sesión como administrador/supervisor para tener acceso a esta sección.');
    });
	
});


Route::group(['middleware' => 'usuarioAdmin'], function () {

    Route::resource('tipos_pago', 'Tipos_pagoController');

    Route::resource('restaurantes', 'RestaurantesController');

    Route::resource('proveedores', 'ProveedoresController');

    Route::resource('tipos_venta', 'Tipos_ventaController');

    Route::resource('paises', 'PaisesController');

    Route::resource('entidades', 'EntidadesController');

    Route::resource('municipios', 'MunicipiosController');

    Route::resource('tipos_usuario', 'Tipos_usuarioController');

    Route::resource('users', 'UsersController');

    Route::get('graficas', 'GraficasController@grafica_productos');

    Route::get('genera_pdf', 'PdfController@generaPDF');
    
    Route::get('crear_reporte_ventas/{tipo}', 'PdfController@crear_reporte_ventas');
    
    Route::get('crear_reporte_productos/{tipo}', 'PdfController@crear_reporte_productos');
    
    Route::get('crear_reporte_users/{tipo}', 'PdfController@crear_reporte_users');

    

});

Route::group(['middleware' => 'usuarioCliente'], function () {

});

Route::group(['middleware' => 'usuarioSupervisor'], function () {
	
});

Route::group(['middleware' => 'usuarioVendedor'], function () {

	
});

Route::group(['middleware' => 'usuarioAdminCliente'], function () {

    Route::resource('menu', 'MenuController');

    Route::resource('categorias_menu', 'Categorias_menuController');

    Route::resource('fotos_menu', 'Fotos_menuController');
});

Route::group(['middleware' => 'usuarioAdminSupervisor'], function () {
    Route::get('ajax', 'AjaxController@formulario');

    Route::get('ejecutar_ajax/{tipo}/{cant}/{id}', 'AjaxController@actualizar');

    Route::get('busca_entidades/{id_pais}', 'AjaxController@busca_entidades');
    
    Route::get('busca_municipios/{id_entidad}', 'AjaxController@busca_municipios');
    
    Route::get('llenar_campos/{id}','AjaxController@llenar_campos');
    
    Route::get('actualizar_prod/{id}/{exis}/{pc}','AjaxController@actualizar_prod');

    Route::resource('compras', 'ComprasController');

    Route::resource('detalle_compra', 'Detalle_compraController');

    Route::resource('fotos_productos', 'Fotos_productosController');

    Route::resource('categorias_productos', 'Categorias_productosController');

    Route::resource('productos', 'ProductosController');
});

Route::group(['middleware' => 'usuarioAdminVendedor'], function () {

    Route::resource('ventas', 'VentasController');

    Route::resource('detalle_venta', 'Detalle_ventaController');
});
