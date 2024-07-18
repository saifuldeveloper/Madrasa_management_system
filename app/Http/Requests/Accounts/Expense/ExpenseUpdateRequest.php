<?php

namespace App\Http\Requests\Accounts\Expense;

use Illuminate\Foundation\Http\FormRequest;

class ExpenseUpdateRequest extends FormRequest
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
            'name'           => 'required|max:255|unique:expenses,name,'.Request()->id,
            'expense_head'   => 'required',
            'date'           => 'required',
            'amount'         => 'required|max:10'
        ];
    }
}
