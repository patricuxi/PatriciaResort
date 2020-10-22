<?php

use App\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class PermissionsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $permissions_array = [];
        array_push($permissions_array,Permission::create(['name' => 'crear_alojamientos']));
        array_push($permissions_array,Permission::create(['name' => 'editar_alojamientos']));
        array_push($permissions_array,Permission::create(['name' => 'borrar_alojamientos']));
        $verAlojamientosPermission = Permission::create(['name' => 'ver_alojamientos']);
        array_push($permissions_array, $verAlojamientosPermission);

        $adminRole = Role::create(['name' => 'admin']);
        $adminRole->syncPermissions($permissions_array); //dar muchos permisos

        $clienteRole = Role::create(['name' => 'cliente']);
        $clienteRole->givePermissionTo($verAlojamientosPermission); //dar solo un permiso al cliente, el de ver Alojamientos

        //Creamos usuarios de prueba para ver los roles
        $userAdmin = User::create([
            'name' => 'admin',
            'email' => 'admin@gmail.com',
            'password' => Hash::make('admin'),
        ]);
        $userAdmin->assignRole('admin'); //Le asignamos al userAdmin el role de admin

        $userCliente = User::create([
            'name' => 'cliente1',
            'email' => 'cliente1@gmail.com',
            'password' => Hash::make('cliente1'),
        ]);
        $userCliente->assignRole('cliente'); //Le asignamos al userCliente el role de cliente


    }
}
