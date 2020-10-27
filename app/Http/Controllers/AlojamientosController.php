<?php

namespace App\Http\Controllers;

use App\Alojamiento;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use Validator;

class AlojamientosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Responseu
     */
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = Alojamiento::latest()->get();
            return Datatables::of($data)
                ->addColumn('action', function($data){
                    $button = '<button type="button" name="edit" id="'.$data->id.'" class="edit btn btn-primary btn-sm">Editar</button>';
                    $button .= '&nbsp;&nbsp;&nbsp;<button type="button" name="edit" id="'.$data->id.'" class="delete btn btn-danger btn-sm">Eliminar</button>';
                    return $button;
                })
                ->rawColumns(['action'])
                ->make(true);
        }

        return view('alojamientos');
    }






    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $rules = array(
            'nombre' => 'required',
            'direccion' => 'required',
            'tipo' => 'required',
            'habitaciones' => 'required',
            'telefono' => 'required'
        );

        $error = Validator::make($request->all(), $rules);

        if ($error->fails()) {
            return response()->json(['errors' => $error->errors()->all()]);
        }

        $form_data = array(
            'nombre' => $request->nombre,
            'direccion' => $request->direccion,
            'tipo' => $request->tipo,
            'habitaciones' => $request->habitaciones,
            'telefono' => $request->telefono
        );

        Alojamiento::create($form_data);

        return response()->json(['success' => 'Datos añadidos correctamente.']);


    }

    /**
     * Display the specified resource.
     *
     * @param \App\Alojamiento $alojamientos
     * @return \Illuminate\Http\Response
     */
    public function show(Alojamiento $alojamientos)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Alojamiento $alojamientos
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

        if(request()->ajax())
        {
            $data = Alojamiento::findOrFail($id);
            return response()->json(['result' => $data]);
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Alojamiento $alojamientos
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Alojamiento $alojamientos)
    {
        //
        $rules = array(
            'nombre' => 'required',
            'direccion' => 'required',
            'tipo' => 'required',
            'habitaciones' => 'required',
            'telefono' => 'required'
        );

        $error = Validator::make($request->all(), $rules);

        if($error->fails())
        {
            return response()->json(['errors' => $error->errors()->all()]);
        }

        $form_data = array(
            'nombre' => $request->nombre,
            'direccion' => $request->direccion,
            'tipo' => $request->tipo,
            'habitaciones' => $request->habitaciones,
            'telefono' => $request->telefono
        );

        Alojamiento::whereId($request->hidden_id)->update($form_data);

        return response()->json(['success' => 'El alojamiento se ha actualizado correctamente.']);

    }


    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Alojamiento $alojamientos
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = Alojamiento::findOrFail($id);
        $data->delete();
    }
}
