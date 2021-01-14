<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Ciudad;
use App\Http\Resources\CiudadResource;

class CiudadController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return response()->json(['status'=>'ok','data'=>Ciudad::all()], 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $ciudad = new Ciudad();
        $ciudad->nombre = $request->nombre;
        if($ciudad->save()){
            return new CiudadResource($ciudad);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $ciudad = Ciudad::findOrFail($id);
        return new CiudadResource($ciudad);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $ciudad = Ciudad::findOrFail($id);
        $ciudad = new Ciudad();
        $ciudad->nombre = $request->nombre;
        if($ciudad->save()){
            return new CiudadResource($ciudad);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $ciudad = Ciudad::findOrFail($id);
        if($ciudad->delete()){
            return new CiudadResource($ciudad);
        }
    }
}
