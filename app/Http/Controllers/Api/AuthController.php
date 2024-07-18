<?php

namespace App\Http\Controllers\Api;

use App\Models\User;
use App\Mail\ForgotPassword;
use Illuminate\Http\Request;
use App\Traits\ReturnFormatTrait;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;
use App\Http\Requests\UpdatePasswordRequest;

class AuthController extends Controller
{
    use ReturnFormatTrait;


    public function register(Request $request)
    {
        try {
            $data = Validator::make($request->all(),[
                'name'      => 'required',
                'email'     => 'required|string|email|unique:users',
                'password'  => 'required|string|min:8',
            ]);

            if ($data->fails()) {
                return $this->responseWithError(___('alert.validation_error'), $data->errors());
            }

            $user = User::create([
                'name'      => $request->name,
                'email'     => $request->email,
                'password'  => Hash::make($request->password),
            ]);

            $token = Auth::login($user);

            return $this->responseWithSuccess(___('alert.registered_successfully'), [
                'access_token'  => $token,
                'token_type'    => 'Bearer',
            ]);

        } catch (\Throwable $th) {
            return $this->responseWithError(___('alert.something_went_wrong'), $th->getMessage());
        }
    }


    public function login(Request $request)
    {
        try {
            $data = Validator::make($request->all(),[
                'email'     => 'required',
                'password'  => 'required',
            ]);

            if ($data->fails()) {
                return $this->responseWithError(___('alert.validation_error'), $data->errors());
            }

            $credentials = $request->only('email', 'password');

            $user = User::where('email', $request->email)->select('id', 'name', 'email', 'phone', 'permissions', 'status', 'role_id', 'upload_id')->first();

            $token = Auth::guard('api')->attempt($credentials);

            if (!$token) {
                return $this->responseWithError(___('alert.invalid_credentials'), null);
            }

            if (!in_array($user->role_id, [6, 7])) {
                return $this->responseWithError(___('alert.unauthorized'), null);
            }



            if (!$user->status) {
                return $this->responseWithError(___('alert.your_account_is_inactive'), null);
            }

            $user['access_token'] = $token;
            $user['avatar'] = @globalAsset($user->upload->path, '40X40.webp');

            return $this->responseWithSuccess(___('alert.login_successfully'), [
                'token_type'    => 'Bearer',
                'user'          => $user
            ]);

        } catch (\Throwable $th) {
            return $this->responseWithError(___('alert.something_went_wrong'), $th->getMessage());
        }
    }


    public function forgotPassword(Request $request)
    {
        try {

            $data = Validator::make($request->all(),[
                'email' => 'required'
            ]);

            if ($data->fails()) {
                return $this->responseWithError(___('alert.validation_error'), $data->errors());
            }

            $user = User::where('email', $request['email'])->first();

            if (!$user) {
                return $this->responseWithError(___('alert.user_not_found'), []);
            }

            $otp = rand(111111, 999999);

            $data = [
                'email' => $user->email,
                'otp'   => $otp
            ];

            $user->update(['reset_password_otp' => $otp]);

            \Config::set('mail.mailers.smtp.password', \Crypt::decrypt(setting('mail_password')));

            $forgotPassword = new ForgotPassword($data);

            Mail::to($user->email)->send($forgotPassword);

            return $this->responseWithSuccess(___('alert.we_will_send_you_an_otp_on_this_email'), ['otp' => $otp]);

        } catch (\Throwable $th) {
            return $this->responseWithError(___('alert.something_went_wrong'), $th->getMessage());
        }
    }


    public function resetPassword(Request $request)
    {
        try {
            $data = Validator::make($request->all(),[
                'email'     => 'required',
                'otp'       => 'required',
                'password'  => 'required|confirmed',
            ]);

            if ($data->fails()) {
                return $this->responseWithError(___('alert.validation_error'), $data->errors());
            }

            $user = User::where('email', $request['email'])->first();

            if (!$user) {
                return $this->responseWithError(___('alert.user_not_found'), []);
            }

            if (@$user->reset_password_otp != $request['otp']) {
                return $this->responseWithError(___('alert.otp_is_invalid'), []);
            }

            $user->update([
                'password' => Hash::make($request['password']),
                'reset_password_otp' => null
            ]);

            return $this->responseWithSuccess(___('alert.password_has_been_updated_successfully'), []);

        } catch (\Throwable $th) {
            return $this->responseWithError(___('alert.something_went_wrong'), $th->getMessage());
        }
    }


    public function updatePassword(UpdatePasswordRequest $request)
    {
        try {

            User::where('id', auth()->id())->update(['password' => Hash::make($request->password)]);

            return $this->responseWithSuccess(___('alert.password_has_been_changed_successfully'), []);

        } catch (\Throwable $th) {
            return $this->responseWithError(___('alert.something_went_wrong'), $th->getMessage());
        }
    }


    public function logout()
    {
        try {
            Auth::logout();
            return $this->responseWithSuccess(___('alert.you_have_successfully_logged_out'), []);

        } catch (\Throwable $th) {
            return $this->responseWithError(___('alert.something_went_wrong'), $th->getMessage());
        }
    }
}
