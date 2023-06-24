<?php

namespace App\Http\Controllers;

use App\Models\Student;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;

class StudentController extends Controller
{
     // create data 
     public function store(Request $request)
     {
         $validator = Validator::make($request->all(), 
         [
             'student_name' => 'required',
             'gender' => 'required',
             'address' => 'required',
             'class_id' => 'required'
         ]);
 
         if($validator -> fails()){
             return Response() -> json($validator -> errors());
         }
 
         $store = Student::create([
             'student_name' => $request->student_name,
             'gender' => $request->gender,
             'address' => $request->address,
             'class_id' => $request->class_id
         ]);
 
         $data = Student::where('student_name', '=', $request->student_name)->get();
         if($store){
             return Response() -> json([
                 'status' => 1,
                 'message' => 'Succes create new data!',
                 'data' => $data
             ]);
         } else 
         {
             return Response() -> json([
                 'status' => 0,
                 'message' => 'Failed create new data!'
             ]);
         }
    
     }

      // read data 
    public function show(){
        $student = DB::table('student')
        ->select('student.*', 'class.class_name', 'class.major')
        ->join('class', 'class.class_id', '=', 'student.class_id')
        ->get();
        return Response() -> json($student);
    }

    public function detail($id){
        if(DB::table('student')->where('student_id', $id)->exists()){
            $detail_student = DB::table('student')
            ->select('student.*')
            ->where('student_id', '=', $id)
            ->get();
            return Response() -> json($detail_student);
        } else {
            return Response()-> json(['message' => 'Could not find the data']);
        }
    }

     // update data 
     public function update($id, Request $request ){
        $validator = Validator::make($request->all(),
        [
            'student_name' => 'required',
            'gender' => 'required',
            'address' => 'required',
            'class_id' => 'required'
        ]);

        if($validator -> fails()){
            return Response()->json($validator->errors());
        }

        $update=DB::table('student')
        ->where('student_id', '=', $id)
        ->update(
            [
                'student_name' => $request->student_name,
                'gender' => $request->gender,
                'address' => $request->address,
                'class_id' => $request->class_id
            ]
        );

        $data=Student::where('student_id', '=', $id) ->get();
        if($update){
            return Response() -> json([
                'status' => 1,
                'message' => 'Success updating data!',
                'data' => $data  
            ]);
        } else {
            return Response() -> json([
                'status' => 0,
                'message' => 'Failed updating data!'
            ]);
        }

    }
}
