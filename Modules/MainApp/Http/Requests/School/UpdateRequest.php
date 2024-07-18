<?php

namespace Modules\MainApp\Http\Requests\School;

use Illuminate\Foundation\Http\FormRequest;

class UpdateRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            // 'sub_domain_key' => 'required|max:255|unique:schools,sub_domain_key,'.Request()->id,
            'name'           => 'required|max:255|unique:schools,name,'.Request()->id,
            // 'package'        => 'required',
            // 'address'        => 'required',
            // 'phone'          => 'required',
            // 'email'          => 'required',
            'status'         => 'required',
        ];
    }
}
