<?php

namespace App\Repositories\StudentInfo;

use App\Models\Role;
use App\Models\User;
use App\Enums\Settings;
use App\Enums\ApiStatus;
use App\Traits\CommonHelperTrait;
use App\Traits\ReturnFormatTrait;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\StudentInfo\ParentGuardian;
use App\Interfaces\StudentInfo\ParentGuardianInterface;

class ParentGuardianRepository implements ParentGuardianInterface
{
    use ReturnFormatTrait;
    use CommonHelperTrait;

    private $model;

    public function __construct(ParentGuardian $model)
    {
        $this->model = $model;
    }

    public function all()
    {
        return $this->model->active()->pluck('guardian_name','id')->toArray();
    }

    public function getPaginateAll()
    {
        return $this->model::latest()->paginate(Settings::PAGINATE);
    }

    public function searchParent($request)
    {
        return $this->model::where('guardian_name', 'LIKE', "%{$request->keyword}%")
        ->orWhere('guardian_email', 'LIKE', "%{$request->keyword}%")
        ->orWhere('guardian_mobile', 'LIKE', "%{$request->keyword}%")
        ->paginate(Settings::PAGINATE);
    }

    public function getParent($request)
    {
        return $this->model->where('guardian_name', 'like', '%' . $request->text . '%')->pluck('guardian_name','id')->toArray();
    }

    public function store($request)
    {
        DB::beginTransaction();
        try {
            $role                     = Role::find(7); // Guardian role id 7 

            $user                     = new User();
            $user->name               = $request->guardian_name;
            $user->email              = $request->guardian_email;
            $user->phone              = $request->guardian_mobile;
            $user->password           = Hash::make('123456');
            $user->email_verified_at  = now();
            $user->role_id            = $role->id;
            $user->permissions        = $role->permissions;
            $user->upload_id          = $this->UploadImageCreate($request->guardian_image, 'backend/uploads/users');
            $user->save();

            $row                      = new $this->model;
            $row->user_id             = $user->id;
            $row->father_name         = $request->father_name;
            $row->father_mobile       = $request->father_mobile;
            $row->father_profession   = $request->father_profession;
            $row->father_nationality   = $request->father_nationality;
            $row->mother_name         = $request->mother_name;
            $row->mother_mobile       = $request->mother_mobile;
            $row->mother_profession   = $request->mother_profession;
            $row->guardian_profession = $request->guardian_profession;
            $row->guardian_address    = $request->guardian_address;
            $row->guardian_relation   = $request->guardian_relation;
            $row->guardian_name       = $request->guardian_name;
            $row->guardian_email      = $request->guardian_email;
            $row->guardian_mobile     = $request->guardian_mobile;
            $row->guardian_image      = $user->upload_id;
            $row->father_image        = $this->UploadImageCreate($request->father_image, 'backend/uploads/users');
            $row->mother_image        = $this->UploadImageCreate($request->mother_image, 'backend/uploads/users');
            $row->status              = $request->status;
            $row->save();

            DB::commit();
            return $this->responseWithSuccess(___('alert.created_successfully'), []);
        } catch (\Throwable $th) {
            DB::rollback();
            return $this->responseWithError(___('alert.something_went_wrong_please_try_again'), []);

        }
    }

    public function show($id)
    {
        return $this->model->find($id);
    }

    public function update($request, $id)
    {
        DB::beginTransaction();
        try {
            $row                      = $this->model->find($id);

            $user                     = User::find($row->user_id);

            $role                     = Role::find($user->role_id);

            $user->name               = $request->guardian_name;
            $user->email              = $request->guardian_email;
            $user->phone              = $request->guardian_mobile;
            $user->upload_id          = $this->UploadImageUpdate($request->guardian_image, 'backend/uploads/users',$user->upload_id);
            $user->permissions        = $role->permissions;
            $user->save();

            $row->father_name         = $request->father_name;
            $row->father_mobile       = $request->father_mobile;
            $row->father_profession   = $request->father_profession;
            $row->father_nationality   = $request->father_nationality;
            $row->mother_name         = $request->mother_name;
            $row->mother_mobile       = $request->mother_mobile;
            $row->mother_profession   = $request->mother_profession;
            $row->guardian_profession = $request->guardian_profession;
            $row->guardian_address    = $request->guardian_address;
            $row->guardian_relation   = $request->guardian_relation;
            $row->guardian_name       = $request->guardian_name;
            $row->guardian_email      = $request->guardian_email;
            $row->guardian_mobile     = $request->guardian_mobile;
            $row->guardian_image      = $user->upload_id;
            $row->father_image        = $this->UploadImageUpdate($request->father_image, 'backend/uploads/users',$row->father_image);
            $row->mother_image        = $this->UploadImageUpdate($request->mother_image, 'backend/uploads/users',$row->mother_image);
            $row->status              = $request->status;
            $row->save();

            DB::commit();
            return $this->responseWithSuccess(___('alert.updated_successfully'), []);
        } catch (\Throwable $th) {
            DB::rollback();
            return $this->responseWithError(___('alert.something_went_wrong_please_try_again'), []);
        }
    }

    public function destroy($id)
    {
        DB::beginTransaction();
        try {
            $row = $this->model->find($id);
            $this->UploadImageDelete($row->father_image);
            $this->UploadImageDelete($row->mother_image);
            $row->delete();

            $user = User::find($row->user_id);
            $this->UploadImageDelete($user->upload_id);
            $user->delete();

            DB::commit();
            return $this->responseWithSuccess(___('alert.deleted_successfully'), []);
        } catch (\Throwable $th) {
            DB::rollback();
            return $this->responseWithError(___('alert.something_went_wrong_please_try_again'), []);
        }
    }
}
