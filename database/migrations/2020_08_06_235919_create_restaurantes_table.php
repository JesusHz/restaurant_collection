<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRestaurantesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('restaurantes', function (Blueprint $table) {
            $table->id();
            $table->string('nombre');
            $table->string('telefono');
            $table->foreignId('id_pais')->references('id')->on('paises');
            $table->foreignId('id_entidad')->references('id')->on('entidades');
            $table->foreignId('municipio_id')->constrained();
            $table->foreignId('id_tipo_usu')->references('id')->on('tipos_usuario');
            $table->string('direccion');
            $table->integer('cp');
            $table->string('colonia');
            $table->string('email');
            $table->string('username');
            $table->string('password');
            $table->integer('status');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('restaurantes');
    }
}
