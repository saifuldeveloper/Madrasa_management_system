<?php

namespace Modules\MainApp\Http\Requests\Testimonial;

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
            'name'           => 'required|max:255|unique:testimonials,name,'.Request()->id,
            'link'           => 'required',
            'rating'         => 'required',
            'position'       => 'required',
            'description'    => 'required',
            'status'         => 'required',
        ];
    }
}
