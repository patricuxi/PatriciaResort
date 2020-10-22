<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Alojamiento;
use Faker\Generator as Faker;

$factory->define(Alojamiento::class, function (Faker $faker) {
    return [
        //
        'nombre' => $faker->sentence(3),
        'direccion' =>$faker->address,
        'tipo' =>$faker-> sentence(1),
        'habitaciones' =>$faker-> randomDigit,
        'telefono' =>$faker-> randomDigit,

    ];
});
