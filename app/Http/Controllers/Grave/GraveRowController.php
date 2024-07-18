<?php

namespace App\Http\Controllers\Grave;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\Graves\GraveRowStoreRequest;
use App\Http\Requests\Graves\GraveRowUpdateRequest;
use App\Interfaces\Graves\GraveRowInterface;

class GraveRowController extends Controller
{
    
    
        private $grave_row;
     

        function __construct(GraveRowInterface $grave_row ,)
        {
    
            $this->grave_row       = $grave_row; 
           
        }
    
        public function index()
        {
            $data['graves_row'] = $this->grave_row->getAll();
            $data['title'] = ___('common.graves_row');
            return view('backend.graves.graves-row.index', compact('data'));
        }
    
        public function create()
        {
            $data['title']       = ___('common.create_grave_row');
            // $data['permissions'] = $this->permission->all();
            return view('backend.graves.graves-row.create', compact('data'));
        }
    
        public function store(GraveRowStoreRequest $request)
        {
           
            $result = $this->grave_row->store($request);
            if($result){
                return redirect()->route('graves.index')->with('success', ___('alert.grave_row_created_successfully'));
            }
            return redirect()->route('graves.index')->with('danger', ___('alert.something_went_wrong_please_try_again') );
        }
    
        public function edit($id)
        {
            $data['grave_row']        = $this->grave_row->show($id);
            $data['title']       = ___('common.roles');
            return view('backend.graves.graves-row.edit', compact('data'));
        }
    
        public function update(GraveRowUpdateRequest $request, $id)
        {
            $result = $this->grave_row->update($request, $id);
            if($result){
                return redirect()->route('graves.index')->with('success', ___('alert.grave_row_updated_successfully'));
            }
            return redirect()->route('graves.index')->with('danger', ___('alert.something_went_wrong_please_try_again'));
        }
    
        public function delete($id)
        {
            if($this->grave_row->destroy($id)):
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
