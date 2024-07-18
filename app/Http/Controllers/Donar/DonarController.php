<?php

namespace App\Http\Controllers\Donar;

use App\Http\Controllers\Controller;
use App\Http\Requests\Donar\DonarStoreRequest;
use App\Http\Requests\Donar\DonarUpdateRequest;
use App\Interfaces\Donar\DonarInterface;
use Illuminate\Http\Request;

class DonarController extends Controller
{
    //
    private $donar;
     

    function __construct(DonarInterface $donar ,)
    {

        $this->donar       = $donar; 
       
    }

    public function index()
    {
        $data['donar'] = $this->donar->getAll();
        $data['title'] = ___('common.donar');
        return view('backend.donar.index', compact('data'));
    }

    public function create()
    {
        $data['title']       = ___('common.create_donar');
        // $data['permissions'] = $this->permission->all();
        return view('backend.donar.create', compact('data'));
    }

    public function store(DonarStoreRequest $request)
    {
        $result = $this->donar->store($request);
        if($result){
            return redirect()->route('donar.index')->with('success', ___('alert.donar_created_successfully'));
        }
        return redirect()->route('donar.index')->with('danger', ___('alert.something_went_wrong_please_try_again') );
    }

    public function edit($id)
    {
        $data['donar']        = $this->donar->show($id);

        $data['title']       = ___('common.donar');
        return view('backend.donar.edit', compact('data'));
    }

    public function update(DonarUpdateRequest $request, $id)
    {
        $result = $this->donar->update($request, $id);
        if($result){
            return redirect()->route('donar.index')->with('success', ___('alert.donar_updated_successfully'));
        }
        return redirect()->route('donar.index')->with('danger', ___('alert.something_went_wrong_please_try_again'));
    }

    public function delete($id)
    {
        if($this->donar->destroy($id)):
            $success[0] = ___('alert.deleted_successfully');
            $success[1] = 'success';
            $success[2] = ___('alert.deleted');
            $success[3] = ___('alert.OK');
            return response()->json($success);
        else:
            $success[0] = ___('alert.something_went_wrong_please_try_again');
            $success[1] = 'error';
            $success[2] = ___('alert.oops');
            return response()->json($success);
        endif;      
    }
}
