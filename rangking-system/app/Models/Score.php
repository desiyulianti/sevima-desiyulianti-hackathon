<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Score extends Model
{
    protected $table = 'score';
    public $timestamps = true;
    public $primaryKey = 'score_id';

    protected $fillable = ['lesson_name', 'score_amount'];
}
