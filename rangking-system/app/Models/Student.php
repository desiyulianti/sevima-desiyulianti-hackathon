<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    protected $table = 'student'; //$table menyimpan informasi nama tabel customers
    //save customer table name information
    public $timestamps = true;
    public $primaryKey = 'student_id';

    protected $fillable = ['student_name', 'gender', 'address', 'class_id'];

    public function class() {
        return $this->belongsTo('App\Models\Grade','class_id','class_id');
    }
}
