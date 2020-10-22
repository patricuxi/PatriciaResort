<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Alojamiento extends Model
{
    //e
    protected $table="alojamientos";

    protected $fillable = [
        'nombre', 'direccion', 'tipo','habitaciones','telefono',
    ];
}
