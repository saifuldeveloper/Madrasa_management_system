<?php

namespace App\Http\Controllers\WebsiteSetup;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\WebsiteSetup\AboutRepository;
use Illuminate\Support\Facades\Schema;
use App\Http\Requests\WebsiteSetup\About\AboutStoreRequest;
use App\Http\Requests\WebsiteSetup\About\AboutUpdateRequest;
use App\Repositories\LanguageRepository;

class AboutController extends Controller
{
    private $aboutRepo;
    private $lang_repo;

    function __construct(AboutRepository $aboutRepo, LanguageRepository $lang_repo)
    {
        if (!Schema::hasTable('settings') && !Schema::hasTable('users')  ) {
            abort(400);
        }
        $this->aboutRepo                  = $aboutRepo;
        $this->lang_repo                  = $lang_repo;
    }

    public function index()
    {
        $data['about'] = $this->aboutRepo->getAll();
        $data['title'] = ___('settings.about');
        return view('website-setup.about.index', compact('data'));
    }

    public function create()
    {
        $data['title']       = ___('website.create_about');
        return view('website-setup.about.create', compact('data'));
    }

    public function store(AboutStoreRequest $request)
    {
        $result = $this->aboutRepo->store($request);
        if($result['status']){
            return redirect()->route('about.index')->with('success', $result['message']);
        }
        return back()->with('danger', $result['message']);
    }

    public function edit($id)
    {
        $data['about']      = $this->aboutRepo->show($id);
        $data['title']       = ___('website.edit_about');
        return view('website-setup.about.edit', compact('data'));
    }

    public function update(AboutUpdateRequest $request, $id)
    {
        $result = $this->aboutRepo->update($request, $id);
        if($result['status']){
            return redirect()->route('about.index')->with('success', $result['message']);
        }
        return back()->with('danger', $result['message']);
    }

    public function translate($id)
    {
        $data['about']      = $this->aboutRepo->show($id);
        $data['translates']      = $this->aboutRepo->translates($id);
        $data['languages']      = $this->lang_repo->all();
        $data['title']       = ___('website.edit_about');
        return view('website-setup.about.translate', compact('data'));
    }


    public function translateUpdate(Request $request, $id)
    {
        $result = $this->aboutRepo->translateUpdate($request, $id);
        if($result['status']){
            return redirect()->route('about.index')->with('success', $result['message']);
        }
        return back()->with('danger', $result['message']);
    }

    public function delete($id)
    {
        $result = $this->aboutRepo->destroy($id);
        if($result['status']):
            $success[0] = $result['message'];
            $success[1] = 'success';
            $success[2] = ___('alert.deleted');
            $success[3] = ___('alert.OK');
            return response()->json($success);
        else:
            $success[0] = $result['message'];
            $success[1] = 'error';
            $success[2] = ___('alert.oops');
            return response()->json($success);
        endif;
    }
}
