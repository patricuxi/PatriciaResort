<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\HasMedia\HasMedia;
use Spatie\MediaLibrary\HasMedia\HasMediaTrait;
use Spatie\MediaLibrary\Models\Media;

class Alojamiento extends Model implements HasMedia
{
    //e
    use HasMediaTrait;

    protected $table="alojamientos";
    protected $fillable = [
        'alojamiento_id','nombre', 'direccion', 'tipo','habitaciones','telefono',
    ];



    //añadir las coleciones que tendra este modelo, el comportamiento y filtro
    public function registerMediaCollections()
    {
        //nombramos las colecciones disponibles para el modelo usuario
        //coleccion avatar
        $this->addMediaCollection('alojamiento')
            //esta coleccion solo permite un unico fichero, por tanto cuando se suba otro fichero se reemplazara por el mas reciente
            // ->singleFile()
            //indica el disco a utilizar para guardar la imagen
            ->useDisk('images_alojamientos')
            //filtro que se le aplicaran al fichero, en este caso solo se aceptan imagenes  jpeg y png
            ->acceptsMimeTypes(['image/jpeg','image/png']);
//            ->acceptsFile(function (File $file) {
//                return $file->mimeType === 'image/jpeg' || $file->mimeType === 'image/png';
//            });


    }
    //si nuestro modelo tiene conversiones de las imagenes que le guardamos van especificadas aqui.
    public function registerMediaConversions(Media $media = null)
    {
        //cada vez que se guarde una imagen en el modelo usuario se le generara una miniatura si pertenece a la colecciones aceptadas
        //nombre de la coleccion donde se guardara la miniatura.
        $this->addMediaConversion('alojamiento-thumb')
            //modificadores aplicados para crear la miniatura
            ->width(50)
            ->height(50)
            ->sharpen(10)
            //añadimos el nombre de las colecciones de usuarios a las cuales se le creara esta miniatura.
            ->performOnCollections('alojamientos')
        ;

    }

    public function alojamiento(){
        return $this->hasOne(Media::class,'id','alojamiento_id');
    }


    public function  getAlojamientoUrlAttribute(){
        return $this->alojamiento->getURL('thumb');
    }

}
