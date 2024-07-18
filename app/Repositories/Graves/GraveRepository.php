<?php

namespace App\Repositories\Graves;

use App\Interfaces\Graves\GraveInterface;
use App\Models\Grave;
use App\Enums\Settings;

class GraveRepository implements GraveInterface
{

    private $model;

    public function __construct(Grave $model)
    {
        $this->model = $model;
    }

    public function all()
    {
        return $this->model->active()->get();
    }

    public function getAll()
    {
        return Grave::with('genderName')->orderBy('id','desc')->paginate(10);
    }

    public function store($request)
    {

       
        // try {
            $grave                                      = new $this->model;
            $grave->frist_name                          = $request->first_name;
            $grave->gender                              = $request->gender;
            $grave->date_of_bural                       = $request->date_of_burial;
            $grave->address                             = $request->address;
            $grave->father_name                         = $request->father_name;
            $grave->mother_name                         = $request->mother_name;
            $grave->husband_name                        = $request->husband_name;
            $grave->note                                = $request->note;
            $grave->relative_frist_name                 = $request->relative_frist_name;
            $grave->relative_second_name                = $request->relative_last_name;
            $grave->relative_mobile                     = $request->relative_mobile;
            $grave->relative_email                      = $request->relative_email;
            $grave->name_of_the_relationship            = $request->name_of_the_relationship;
            $grave->relative_present_address            = $request->relative_present_address;
            $grave->relative_parmanent_address          = $request->relative_parmanent_address;
            $grave->save();
            return true;
        // } catch (\Throwable $th) {
        //     return false;
        // }
    }

    public function show($id)
    {
        return $this->model->with('graveRow','genderName','blood')->find($id);
    }

    public function update($request, $id)
    {
        try {
            $grave                                     = $this->model->findOrfail($id);
            $grave->frist_name                          = $request->first_name;
            $grave->last_name                           = $request->last_name;
            $grave->gender                              = $request->gender;
            $grave->date_of_bural                       = $request->date_of_burial;
            $grave->address                             = $request->address;
            $grave->father_name                         = $request->father_name;
            $grave->mother_name                         = $request->mother_name;
            $grave->husband_name                        = $request->husband_name;
            $grave->note                                = $request->note;
            $grave->relative_frist_name                 = $request->relative_frist_name;
            $grave->relative_second_name                = $request->relative_last_name;
            $grave->relative_mobile                     = $request->relative_mobile;
            $grave->relative_email                      = $request->relative_email;
            $grave->name_of_the_relationship            = $request->name_of_the_relationship;
            $grave->relative_present_address            = $request->relative_present_address;
            $grave->relative_parmanent_address          = $request->relative_parmanent_address;
            $grave->save();
            return true;
        } catch (\Throwable $th) {
            return false;
        }
    }

    
    public function searchGraveInfo($request) {

        $graves = $this->model->query();

        if (!empty($request->keyword)) {
            $keyword = $request->keyword;
            $graves->where(function($query) use ($keyword) {
                $query->Where('frist_name', 'LIKE', "%{$keyword}%")
                      ->orWhere('address', 'LIKE', "%{$keyword}%")
                      ->orWhere('father_name', 'LIKE', "%{$keyword}%")
                      ->orWhere('mother_name', 'LIKE', "%{$keyword}%")
                      ->orWhere('husband_name', 'LIKE', "%{$keyword}%")
                      ->orWhere('note', 'LIKE', "%{$keyword}%")
                      ->orWhere('relative_frist_name', 'LIKE', "%{$keyword}%")
                      ->orWhere('relative_second_name', 'LIKE', "%{$keyword}%")
                      ->orWhere('relative_mobile', 'LIKE', "%{$keyword}%")
                      ->orWhere('relative_email', 'LIKE', "%{$keyword}%")
                      ->orWhere('relative_present_address', 'LIKE', "%{$keyword}%")
                      ->orWhere('relative_parmanent_address', 'LIKE', "%{$keyword}%");
            });
        }
        return $graves->paginate(Settings::PAGINATE);
    }

    public function filterSearch($request) {
    
        $dates = explode(' - ', $request->dates);
        $start = date('Y-m-d 00:00:00', strtotime($dates[0]));
        $end   = date('Y-m-d 23:59:59', strtotime($dates[1]));
        $graves = $this->model->query();

        if (!empty($request->keyword)) {
            $keyword = $request->keyword;
            $graves->where(function($query) use ($keyword) {
                $query->Where('frist_name', 'LIKE', "%{$keyword}%")
                      ->orWhere('address', 'LIKE', "%{$keyword}%")
                      ->orWhere('father_name', 'LIKE', "%{$keyword}%")
                      ->orWhere('mother_name', 'LIKE', "%{$keyword}%")
                      ->orWhere('husband_name', 'LIKE', "%{$keyword}%")
                      ->orWhere('note', 'LIKE', "%{$keyword}%")
                      ->orWhere('relative_frist_name', 'LIKE', "%{$keyword}%")
                      ->orWhere('relative_second_name', 'LIKE', "%{$keyword}%")
                      ->orWhere('relative_mobile', 'LIKE', "%{$keyword}%")
                      ->orWhere('relative_email', 'LIKE', "%{$keyword}%")
                      ->orWhere('relative_present_address', 'LIKE', "%{$keyword}%")
                      ->orWhere('relative_parmanent_address', 'LIKE', "%{$keyword}%");
            });
        }
        $graves->whereBetween('date_of_bural', [$start, $end]);
        return $graves->paginate(Settings::PAGINATE);
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
