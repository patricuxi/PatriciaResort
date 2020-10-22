<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\HasMedia\HasMedia;
use Spatie\MediaLibrary\HasMedia\HasMediaTrait;
use Spatie\MediaLibrary\Models\Media;
use Spatie\Permission\Traits\HasRoles;


class User extends Authenticatable implements HasMedia
{
    use HasMediaTrait;
    use Notifiable;
    use HasRoles;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    //añadir las coleciones que tendra este modelo, el comportamiento y filtro
    public function registerMediaCollections()
    {
        //nombramos las colecciones disponibles para el modelo usuario
        //coleccion avatar
        $this->addMediaCollection('avatars')
            //esta coleccion solo permite un unico fichero, por tanto cuando se suba otro fichero se reemplazara por el mas reciente
            ->singleFile()
            //indica el disco a utilizar para guardar la imagen
            ->useDisk('users_avatar')
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
        $this->addMediaConversion('user-thumb')
            //modificadores aplicados para crear la miniatura
            ->width(60)
            ->height(60)
            ->sharpen(10)
            //añadimos el nombre de las colecciones de usuarios a las cuales se le creara esta miniatura.
            ->performOnCollections('avatars')
        ;
    }
}
