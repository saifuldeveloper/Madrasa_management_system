<?php

namespace App\Http\Requests\Fees\Assign;

use App\Enums\FineType;
use Illuminate\Foundation\Http\FormRequest;

class FeesAssignUpdateRequest extends FormRequest
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
            'fees_group'         => 'required|max:25',
            'class'              => 'required|max:25',
            'section'            => 'required|max:25'
        ];
    }
}
