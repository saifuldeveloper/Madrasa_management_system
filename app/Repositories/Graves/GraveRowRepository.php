<?php

namespace App\Repositories\Graves;

use App\Interfaces\Graves\GraveRowInterface;
use App\Models\Grave_row;

class GraveRowRepository implements GraveRowInterface
{

    private $model;

    public function __construct(Grave_row $graveRoe_Model)
    {
        $this->model = $graveRoe_Model;
    }

    public function all()
    {
        return $this->model->get();
    }

    public function getAll()
    {
        return Grave_row::latest()->paginate(10);
    }

    public function store($request)
    {
        try {
            $roleStore              = new $this->model;
            $roleStore->name        = $request->name;
            $roleStore->status      = $request->status;
            $roleStore->save();
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
            $roleUpdate              = $this->model->findOrfail($id);
            $roleUpdate->name        = $request->name;
            $roleUpdate->status      = $request->status;
            $roleUpdate->save();
            return true;
        } catch (\Throwable $th) {
            return false;
        }
    }

    public function destroy($id)
    {
        try {
            $roleDestroy = $this->model->find($id);
            $roleDestroy->delete();
            return true;
        } catch (\Throwable $th) {
            return false;
        }
    }
}
