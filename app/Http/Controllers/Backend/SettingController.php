<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;
use PhpParser\Node\Stmt\TryCatch;
use App\Http\Controllers\Controller;
use App\Interfaces\SettingInterface;
use App\Http\Requests\SmsStoreRequest;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Session;
use App\Http\Requests\SettingStoreRequest;
use App\Http\Requests\Settings\EmailSettingStoreRequest;
use App\Http\Requests\GeneralSetting\StorageUpdateRequest;
use App\Http\Requests\GeneralSetting\GeneralSettingStoreRequest;
use App\Repositories\LanguageRepository;

class SettingController extends Controller
{
    private $setting;
    private $lang_repo;

    function __construct(SettingInterface $settingInterface, LanguageRepository $lang_repo)
    {

        if (!Schema::hasTable('settings') && !Schema::hasTable('users')  ) {
            abort(400);
        }
        $this->setting = $settingInterface;
        $this->lang_repo = $lang_repo;
    }

    // General setting start
    public function generalSettings()
    {
        $data['title']      = ___('common.general_settings');
        $data['data']       = $this->setting->getAll();
        $data['languages']  = $this->setting->getLanguage();
        $data['sessions']   = $this->setting->getSessions();
        $data['currencies'] = $this->setting->getCurrencies();
        return view('backend.settings.general-settings', compact('data'));
    }

    public function updateGeneralSetting(GeneralSettingStoreRequest $request)
    {
        $result = $this->setting->updateGeneralSetting($request);
        if ($result) {
            return redirect()->back()->with('success', ___('alert.general_settings_updated_successfully'));
        }
        return redirect()->back()->with('danger', ___('alert.something_went_wrong_please_try_again'));
    }
    // General setting end

    // Storage setting start
    public function storagesetting()
    {

        try {
            $data['title'] = ___('common.storage_settings');
            $data['data']  = $this->setting->getAll();
            return view('backend.settings.storage_setting',compact('data'));
        } catch (\Throwable $th) {
            return redirect('/');
        }
    }

    public function storageSettingUpdate(StorageUpdateRequest $request)
    {
        try {
            $result = $this->setting->storageSettingUpdate($request);
            return back()->with('success', ___('alert.storage_settings_updated_successfully'));
        } catch (\Throwable $th) {
            return back()->with('danger', ___('alert.something_went_wrong_please_try_again'));
        }
    }
    // Storage setting start

    // Recaptcha setting start
    public function recaptchaSetting()
    {
        $data['title'] = ___('common.recaptcha_settings');
        $data['data']  = $this->setting->getAll();
        return view('backend.settings.recaptcha-settings', compact('data'));
    }

    public function updateRecaptchaSetting(SettingStoreRequest $request)
    {
        // return $request;
        $result = $this->setting->updateRecaptchaSetting($request);
        // dd($request);
        if ($result) {
            return redirect()->back()->with('success', ___('alert.recaptcha_settings_updated_successfully'));
        }
        return redirect()->back()->with('danger', ___('alert.something_went_wrong_please_try_again'));
    }
    // Recaptcha setting end

    // Recaptcha setting start
    public function smsSetting()
    {
        $data['title'] = ___('settings.sms_settings');
        $data['data']  = $this->setting->getAll();
        return view('backend.settings.sms-settings', compact('data'));
    }

    public function updateSmsSetting(SmsStoreRequest $request)
    {
        // return $request;
        $result = $this->setting->updateSmsSetting($request);
        // dd($request);
        if ($result) {
            return redirect()->back()->with('success', ___('alert.updated_successfully'));
        }
        return redirect()->back()->with('danger', ___('alert.something_went_wrong_please_try_again'));
    }
    // Recaptcha setting end

    // Payment Gateway setting start
    public function paymentGatewaySetting()
    {
        $data['title'] = ___('common.payment_gateway_settings');
        $data['data']  = $this->setting->getAll();
        return view('backend.settings.payment-gateway-settings', compact('data'));
    }

    public function updatePaymentGatewaySetting(Request $request)
    {
        // return $request;
        $result = $this->setting->updatePaymentGatewaySetting($request);
        // dd($request);
        if ($result) {
            return redirect()->back()->with('success', ___('alert.payment_gateway_settings_updated_successfully'));
        }
        return redirect()->back()->with('danger', ___('alert.something_went_wrong_please_try_again'));
    }
    // Payment Gateway setting end

    // mail settings start
    public function mailSetting()
    {
        $data['title'] = ___('settings.email_settings');
        $data['data']  = $this->setting->getAll();
        return view('backend.settings.mail-settings', compact('data'));
    }

    public function updateMailSetting(EmailSettingStoreRequest $request)
    {
        $result = $this->setting->updateMailSetting($request);

        if ($result) {
            return redirect()->back()->with('success', ___('alert.email_settings_updated_successfully'));
        }
        return redirect()->back()->with('danger', ___('alert.something_went_wrong_please_try_again'));
    }
    // mail settings end


    public function changeTheme(Request $request)
    {
        Session::put('user_theme', $request->theme_mode);
        return true;
    }

    public function taskSchedulers()
    {
        $data['title']      = ___('settings.task_schedules');
        return view('backend.settings.task-schedulers', compact('data'));
    }
    public function resultGenerate()
    {
        try {
            \Artisan::call('exam:result-generate');
            return redirect()->back()->with('success', ___('alert.run_successfully'));
        } catch (\Exception $e) {
            return redirect()->back()->with('danger', ___('alert.something_went_wrong_please_try_again'));
        }
    }




    public function softwareUpdate()
    {
        $data['title']      = ___('settings.software_update');
        return view('backend.settings.software_update', compact('data'));
    }
    public function installUpdate()
    {
        try {
            \Artisan::call('migrate');
            return redirect()->back()->with('success', ___('alert.updated_successfully'));
        } catch (\Exception $e) {
            return redirect()->back()->with('danger', ___('alert.something_went_wrong_please_try_again'));
        }
    }

    public function translate()
    {
        $data['page']      = $this->setting->allTranslate();
        $data['translates']      = $this->setting->translates();
        $data['languages']      = $this->lang_repo->all();
        $data['title']       = ___('website.translate_general_setting');

        return view('backend.settings.general-settings-translate', compact('data'));
    }


    public function translateUpdate(Request $request)
    {
        $result = $this->setting->translateUpdate($request);
        if($result['status']){
            return redirect()->route('settings.general-settings')->with('success', $result['message']);
        }
        return back()->with('danger', $result['message']);
    }
}
