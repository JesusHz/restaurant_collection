<?php

use Illuminate\Database\Seeder;

class tabla_tipos_usuario extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $var[1]='Administrador';
	    $var[2]='Supervisor';
	    $var[3]='Vendedor';
	    $var[4]='Cliente';
		

        for ( $i = 1 ; $i <= 4 ; $i++ )
        {
	        DB::table('tipos_usuario')->insert([
	            'nombre' => $var[$i],
	            'nivel' => $i,
	            'status' => 1,
	        ]);
    	}
    }
}
