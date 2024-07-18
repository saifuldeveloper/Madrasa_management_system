<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Grave extends Model
{
    use HasFactory;

    public function genderName()
    {
        return $this->belongsTo(Gender::class ,'gender' ,'id'); 
    }
    public function graveRow()
    {
        return $this->belongsTo(Grave_row::class ,'grave_row' ,'id'); 
    }

    public function blood()
    {
        return $this->belongsTo(BloodGroup::class, 'blood_group', 'id');
    }
}
