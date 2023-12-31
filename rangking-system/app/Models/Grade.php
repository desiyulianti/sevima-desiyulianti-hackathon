<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Grade extends Model
{
    protected $table = 'class';
    public $timestamps = true;
    public $primaryKey = 'class_id';

    protected $fillable = ['class_name', 'major'];
}
