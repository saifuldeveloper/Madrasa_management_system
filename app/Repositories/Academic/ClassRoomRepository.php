<?php

namespace App\Repositories\Academic;

use App\Enums\ApiStatus;
use App\Traits\ReturnFormatTrait;
use App\Models\Academic\ClassRoom;
use App\Interfaces\Academic\ClassRoomInterface;

class ClassRoomRepository implements ClassRoomInterface
{
    use ReturnFormatTrait;

    private $model;

    public function __construct(ClassRoom $model)
    {
        $this->model = $model;
    }

    public function all()
    {
        return $this->model->active()->get();
    }

    public function getPaginateAll()
    {
        return $this->model::latest()->paginate(10);
    }

    public function store($request)
    {
        try {
            $row              = new $this->model;
            $row->room_no     = $request->room_no;
            $row->capacity    = $request->capacity;
            $row->status      = $request->status;
            $row->save();
            return $this->responseWithSuccess(___('alert.created_successfully'), []);
        } catch (\Throwable $th) {
            return $this->responseWithError(___('alert.something_went_wrong_please_try_again'), []);

        }
    }

    public function show($id)
    {
        return $this->model->find($id);
    }

    public function update($request, $id)
    {
        try {
            $row              = $this->model->findOrfail($id);
            $row->room_no     = $request->room_no;
            $row->capacity    = $request->capacity;
            $row->status      = $request->status;
            $row->save();
            return $this->responseWithSuccess(___('alert.updated_successfully'), []);
        } catch (\Throwable $th) {
            return $this->responseWithError(___('alert.something_went_wrong_please_try_again'), []);
        }
    }

    public function destroy($id)
    {
        try {
            $row = $this->model->find($id);
            $row->delete();
            return $this->responseWithSuccess(___('alert.deleted_successfully'), []);
        } catch (\Throwable $th) {
            return $this->responseWithError(___('alert.something_went_wrong_please_try_again'), []);
        }
    }
}
