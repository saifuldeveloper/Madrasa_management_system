<?php

namespace App\Http\Requests\Library\BookCategory;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Request;

class BookCategoryStoreRequest extends FormRequest
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
    public function rules(Request $r)
    {
        return [
            'name'        => 'required|unique:book_categories,name',
            'status'      => 'required'
        ];
    }
}
