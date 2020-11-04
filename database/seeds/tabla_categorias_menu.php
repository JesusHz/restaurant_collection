<?php

use Illuminate\Database\Seeder;

class tabla_categorias_menu extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $var1[1]='Desayunos';
		$var1[2]='Comidas';
		$var1[3]='Cenas';
		$var1[4]='Postres';
		$var1[5]='Bebidas';

		$var2[1]='Desayunos del dia';
		$var2[2]='Comidas del dia';
		$var2[3]='Cenas del dia';
		$var2[4]='Postres tradicionales';
		$var2[5]='Aguas y refrescos';
		

		for ( $i = 1 ; $i <= 5 ; $i++ ){
	        DB::table('categorias_menu')->insert([
	            'nombre' => $var1[$i],
	            'descripcion' => $var2[$i],
	            'status' => 1,
	        ]);
    	}
    }
}
