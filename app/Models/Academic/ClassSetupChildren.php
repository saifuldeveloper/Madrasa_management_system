<?php

namespace App\Models\Academic;

use App\Models\Academic\Classes;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class ClassSetupChildren extends Model
{
    use HasFactory;

    public function class()
    {
        return $this->belongsTo(Classes::class, 'classes_id', 'id');
    }

    public function section()
    {
        return $this->belongsTo(Section::class, 'section_id', 'id');
    }
}
