<?php

namespace App\Repositories\Donar;

use App\Interfaces\Donar\DonarInterface;
use App\Models\Donar;

class DonarRepository implements DonarInterface
{

    private $model;

    public function __construct(Donar $donar_model)
    {
        $this->model = $donar_model;
    }

    public function all()
    {
        return $this->model->get();
    }

    public function getAll()
    {
        return Donar::latest()->paginate(10);
    }

    public function store($request)
    {

        try {
            $donar                      = new $this->model;
            $donar->name                = $request->name;
            $donar->mobile              = $request->mobile;
            $donar->email               = $request->email;
            $donar->present_address     = $request->present_address;
            $donar->parmanent_address   = $request->parmanent_address;
            $donar->status              = $request->status;

            
            $donar->save();
            return true;
        } catch (\Throwable $th) {
            return false;
        }
    }

    public function show($id)
    {
        return $this->model->find($id);
    }

    public function update($request, $id)
    {
        try {
            $donar                      = $this->model->findOrfail($id);
            $donar->name                = $request->name;
            $donar->mobile              = $request->mobile;
            $donar->email               = $request->email;
            $donar->present_address     = $request->present_address;
            $donar->parmanent_address   = $request->parmanent_address;
            $donar->status      = $request->status;
            $donar->save();
            return true;
        } catch (\Throwable $th) {
            return false;
        }
    }

    public function destroy($id)
    {
        try {
            $donar = $this->model->find($id);
            $donar->delete();
            return true;
        } catch (\Throwable $th) {
            return false;
        }
    }
}
