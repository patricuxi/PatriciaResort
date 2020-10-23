

    <!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <title>Listado de alojamientos</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"/>
    <link href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css" rel="stylesheet">
</head>
<body>


<div id="app">
    <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
        <div class="container">
            <a class="navbar-brand" href="{{ url('/') }}">
                PatriciaResort

            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <!-- Left Side Of Navbar -->
                <ul class="navbar-nav mr-auto">

                </ul>

                <!-- Right Side Of Navbar -->
                <ul class="navbar-nav ml-auto">
                    <!-- Authentication Links -->
                    @guest
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                        </li>
                        @if (Route::has('register'))
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                            </li>
                        @endif
                    @else
                        <li class="nav-item dropdown">
                            <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                {{ Auth::user()->name }}
                            </a>

                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="{{ route('logout') }}"
                                   onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                    {{ __('Logout') }}
                                </a>

                                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                    @csrf
                                </form>
                            </div>
                        </li>
                    @endguest
                </ul>
            </div>
        </div>
    </nav>


</div>


<div class="container mt-5">
    <h2 class="mb-4">Listado de alojamientos</h2>
    <br/>
    @can('crear_alojamientos')
    <div align="right">
        <button type="button" name="create_record" id="create_record" class="btn btn-success btn-sm">Añadir usuario
        </button>
    </div>
    @endcan
    <br/>
    <table id="alojamientos" class="table table-bordered yajra-datatable">
        <thead>
        <tr>
            <th>Nombre</th>
            <th>Descripcion</th>
            <th>Tipo</th>
            <th>Habitaciones</th>
            <th>Telefono</th>
            @canany('editar_alojamientos')
            <th>Acciones</th>
                @endcanany
        </tr>
        </thead>
        <tbody>
        </tbody>
    </table>
</div>
<br/>

</body>
</html>

<div id="formModal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Añadir nuevo alojamiento</h4>
            </div>
            <div class="modal-body">
                <span id="form_result"></span>
                <form method="post" id="alojamientos_form" class="form-horizontal">
                    @csrf
                    <div class="form-group">
                        <label class="control-label col-md-4">Nombre : </label>
                        <div class="col-md-8">
                            <input type="text" name="nombre" id="nombre" class="form-control"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4">Direccion : </label>
                        <div class="col-md-8">
                            <input type="text" name="direccion" id="direccion" class="form-control"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4">Tipo : </label>
                        <div class="col-md-8">
                            <input type="text" name="tipo" id="tipo" class="form-control"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4">Habitaciones : </label>
                        <div class="col-md-8">
                            <input type="text" name="habitaciones" id="habitaciones" class="form-control"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4">Teléfono : </label>
                        <div class="col-md-8">
                            <input type="text" name="telefono" id="telefono" class="form-control"/>
                        </div>
                    </div>
                    <br/>
                    <div class="form-group" align="center">
                        <input type="hidden" name="action" id="action" value="Add"/>
                        <input type="hidden" name="hidden_id" id="hidden_id"/>
                        <input type="submit" name="action_button" id="action_button" class="btn btn-warning"
                               value="Add"/>
                    </div>
                </form>

            </div>
        </div>

    </div>
</div>


<div id="confirmModal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h2 class="modal-title">Confirmación</h2>
            </div>
            <div class="modal-body">
                <h4 align="center" style="margin:0;">¿Quieres eliminar este alojamiento?</h4>
            </div>
            <div class="modal-footer">
                <button type="button" name="ok_button" id="ok_button" class="btn btn-danger">Eliminar</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
            </div>
        </div>
    </div>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.js"></script>
<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>

<script>
    $(document).ready(function () {

    $('#alojamientos').DataTable({
        processing: true,
        serverSide: true,
        ajax: {
            url: "{{ route('alojamientos.index') }}",
        },
        columns: [
            {
                data: 'nombre',
                name: 'nombre'
            },
            {
                data: 'direccion',
                name: 'direccion'
            },
            {
                data: 'tipo',
                name: 'tipo'
            },
            {
                data: 'habitaciones',
                name: 'habitaciones'
            },
            {
                data: 'telefono',
                name: 'telefono'
            },
                @canany('editar_alojamientos')
                {
                data: 'action',
                name: 'action',
                orderable: false
            }
        @endcanany
        ]
    });

    $('#create_record').click(function () {
        $('.modal-title').text('Añadir nuevo alojamiento');
        $('#action_button').val('Añadir');
        $('#action').val('Añadir');
        $('#form_result').html('');

        $('#formModal').modal('show');
    });

    $('#alojamientos_form').on('submit', function (event) {
        event.preventDefault();
        var action_url = '';

        if ($('#action').val() == 'Add') {
            action_url = "{{ route('alojamientos.store') }}";
        }

        if($('#action').val() == 'Edit')
        {
            action_url = "{{ route('alojamientos.update') }}";
        }

        $.ajax({
            url: action_url,
            method: "POST",
            data: $(this).serialize(),
            dataType: "json",
            success: function (data) {
                var html = '';
                if (data.errors) {
                    html = '<div class="alert alert-danger">';
                    for (var count = 0; count < data.errors.length; count++) {
                        html += '<p>' + data.errors[count] + '</p>';
                    }
                    html += '</div>';
                }
                if (data.success) {
                    html = '<div class="alert alert-success">' + data.success + '</div>';
                    $('#alojamientos_form')[0].reset();
                    $('#alojamientos').DataTable().ajax.reload();
                }
                $('#form_result').html(html);
            }
        });
    });

        $(document).on('click', '.edit', function(){
            var id = $(this).attr('id');
            $('#form_result').html('');
            $.ajax({
                url :"alojamientos/"+id+"/edit",
                dataType:"json",
                success:function(data)
                {
                    $('#nombre').val(data.result.nombre);
                    $('#direccion').val(data.result.direccion);
                    $('#tipo').val(data.result.tipo);
                    $('#habitaciones').val(data.result.habitaciones);
                    $('#telefono').val(data.result.telefono);
                    $('#hidden_id').val(id);
                    $('.modal-title').text('Actualizar alojamientos');
                    $('#action_button').val('Actualizar');
                    $('#action').val('Edit');
                    $('#formModal').modal('show');
                }
            })
        });






        var user_id;

        $(document).on('click', '.delete', function(){
            user_id = $(this).attr('id');
            $('#confirmModal').modal('show');
        });

        $('#ok_button').click(function(){
            $.ajax({
                url:"alojamientos/destroy/"+user_id,
                beforeSend:function(){
                    $('#ok_button').text('Eliminando...');
                },
                success:function(data)
                {
                    setTimeout(function(){
                        $('#confirmModal').modal('hide');
                        $('#alojamientos').DataTable().ajax.reload();
                        alert('Alojamiento borrado');
                    }, 2000);
                }
            })
    });
    });
</script>

