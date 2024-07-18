<?php

namespace App\Http\Controllers\Grave;

use App\Http\Controllers\Controller;
use App\Http\Requests\Graves\GraveStoreRequest;
use App\Http\Requests\Graves\GraveUpdateRequest;
use App\Interfaces\Graves\GraveInterface;
use App\Models\Grave;
use App\Repositories\BloodGroupRepository;
use App\Repositories\GenderRepository;
use App\Repositories\Graves\GraveRowRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

class GraveController extends Controller
{
    private $grave;
    private $graveRowRepo;
    private $genderRepo;
    private $bloodRepo;


    function __construct(
        GraveInterface          $grave ,
        GraveRowRepository      $graveRowRepo,
        GenderRepository        $genderRepo,
        BloodGroupRepository    $bloodRepo,
         )
    {

        $this->grave        = $grave; 
        $this->graveRowRepo = $graveRowRepo;
        $this->genderRepo   = $genderRepo;
        $this->bloodRepo    = $bloodRepo;
       
    }

    public function index()
    {
        $data['graves_row']  = $this->graveRowRepo->all();
        $data['graves_list'] = $this->grave->getAll();
        $data['title'] = ___('common.graves_list');

        return view('backend.graves.grave.index', compact('data'));
    }

    public function create()
    {
        $data['graves_row']  = $this->graveRowRepo->all();
        $data['genders']      = $this->genderRepo->all();
        $data['bloods']       = $this->bloodRepo->all();
        $data['title']       = ___('common.create_grave');
        return view('backend.graves.grave.create', compact('data'));
    }

    public function store(GraveStoreRequest $request)
    {

        $result = $this->grave->store($request);
        if($result){
            return redirect()->route('graveslist.index')->with('success', ___('alert.grave_info_created_successfully'));
        }
        return redirect()->route('graveslist.create')->with('danger', ___('alert.something_went_wrong_please_try_again') );
    }

    public function show(Request $request){
        $data['grave']  = $this->grave->show($request->id);
        $data['graves_row']  = $this->graveRowRepo->all();
        $data['genders']      = $this->genderRepo->all();
        $data['bloods']       = $this->bloodRepo->all();
        return view('backend.graves.grave.show', compact('data'))->render();
    }

    public function edit($id)
    {
        $data['grave']  =$this->grave->show($id);
        $data['graves_row']  = $this->graveRowRepo->all();
        $data['genders']      = $this->genderRepo->all();
        $data['bloods']       = $this->bloodRepo->all();
        $data['title']       = ___('common.graves_edit');
        return view('backend.graves.grave.edit', compact('data'));
    }

    public function update(GraveUpdateRequest $request, $id)


    {

        $result = $this->grave->update($request, $id);
        if($result){
            return redirect()->route('graveslist.index')->with('success', ___('alert.grave_info_updated_successfully'));
        }
        return redirect()->route('graveslist.edit',$id)->with('danger', ___('alert.something_went_wrong_please_try_again'));
    }



    public function search(Request $request)
    {
        $data['graves_row']  = $this->graveRowRepo->all();
        $data['request']  = $request;
        $data['title'] = ___('common.graves_list');
        $data['graves_list'] = $this->grave->searchGraveInfo($request);
        return view('backend.graves.grave.index', compact('data'));
    }

    public function filter(){

        $today = Carbon::today()->format('m-d');
        $data['graves_list']  =Grave::whereRaw("DATE_FORMAT(date_of_bural, '%m-%d') = ?", [$today])
            ->get();
            return view('backend.report.grave', compact('data'));
    }

    public function filterSearch(Request $request)
    {
        $data['request']  = $request;
        $data['title'] = ___('common.graves_list');
        $data['graves_list'] = $this->grave->filterSearch($request);
        return view('backend.report.grave', compact('data'));
    }

    public function delete($id)
    {

        if($this->grave->destroy($id)):
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
