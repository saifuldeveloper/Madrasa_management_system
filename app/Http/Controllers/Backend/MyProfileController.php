<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;
use App\Interfaces\UserInterface;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Schema;
use App\Http\Requests\Profile\ProfileUpdateRequest;
use App\Http\Requests\Profile\PasswordUpdateRequest;

class MyProfileController extends Controller
{
    private $user;

    function __construct(UserInterface $userInterface)
    {

        if (!Schema::hasTable('settings') && !Schema::hasTable('users')  ) {
            abort(400);
        } 
        $this->user       = $userInterface;
    }

    public function profile()
    {
        $data['title'] = 'My Profile';
        return view('backend.my-profile.profile',compact('data'));
    }

    public function edit()
    {
        $data['user']        = $this->user->show(Auth::user()->id);
        $data['title']       = "My Profile Edit";
        return view('backend.my-profile.edit',compact('data'));
    }

    public function update(ProfileUpdateRequest $request)
    {
        $result = $this->user->profileUpdate($request,Auth::user()->id);
        if($result){
            return redirect()->route('my.profile')->with('success', ___('alert.profile_updated_successfully'));
        }
        return redirect()->route('my.profile')->with('danger', ___('alert.something_went_wrong_please_try_again'));
    }


    public function passwordUpdate()
    {
        $data['title'] = 'Password Update';
        return view('backend.my-profile.update_password',compact('data'));
    }

    public function passwordUpdateStore(PasswordUpdateRequest $request)
    {
        if (Hash::check($request->current_password, Auth::user()->password)) {
            $result = $this->user->passwordUpdate($request,Auth::user()->id);
            if($result){
                return redirect()->route('passwordUpdate')->with('success', ___('alert.password_updated_successfully'));
            }
            return redirect()->route('passwordUpdate')->with('danger', ___('alert.something_went_wrong_please_try_again'));
        }else {
            return back()->with('danger','Current password is incorrect');
        }
    }
}
