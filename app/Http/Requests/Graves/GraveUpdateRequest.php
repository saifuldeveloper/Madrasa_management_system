<?php

namespace App\Http\Requests\Graves;

use Illuminate\Foundation\Http\FormRequest;

class GraveUpdateRequest extends FormRequest
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
             'first_name' => 'required',
            'date_of_burial' => 'required',
            'father_name' => 'required',
            'mother_name' => 'required',
            'relative_frist_name' => 'required',
            'relative_mobile' => 'required',
            'name_of_the_relationship' => 'required',
            'relative_present_address' => 'required'
        ];
    }
}
