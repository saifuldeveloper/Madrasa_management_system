<?php

namespace App\Models\OnlineExamination;

use App\Enums\Status;
use App\Models\Academic\Classes;
use App\Models\Academic\Section;
use App\Models\Academic\Subject;
use Illuminate\Database\Eloquent\Model;
use App\Models\OnlineExamination\QuestionGroup;
use App\Models\OnlineExamination\QuestionBankChildren;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class QuestionBank extends Model
{
    use HasFactory;

    protected $casts = [
        'answer' => 'array',
    ];
    
    protected $fillable = [
        'session_id',
        'classes_id',
        'section_id',
        'subject_id',
        'question_group_id',
        'type',
        'question',
        'answer',
        'status'
    ];

    public function scopeActive($query)
    {
        return $query->where('status', \App\Enums\Status::ACTIVE);
    }
    public function scopeLatest($query)
    {
        return $query->orderBy('id', 'desc');
    }

    public function group()
    {
        return $this->belongsTo(QuestionGroup::class, 'question_group_id', 'id');
    }
    
    public function questionOptions()
    {
        return $this->hasMany(QuestionBankChildren::class, 'question_bank_id', 'id');
    }
}
