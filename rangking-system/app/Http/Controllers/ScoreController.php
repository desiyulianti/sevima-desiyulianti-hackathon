<?php

namespace App\Http\Controllers;

use App\Models\Score;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;

class ScoreController extends Controller
{
    //create data 
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'lesson_name' => 'required',
            'score_amount' => 'required'
        ]);

        if ($validator->fails()) {
            return Response()->json($validator->errors());
        }

        $store = Score::create([
            'lesson_name' => $request->lesson_name,
            'score_amount' => $request->score_amount
        ]);

        $data = Score::where('lesson_name', '=', $request->lesson_name)->get();
        if ($store) {
            return Response()->json([
                'status' => 1,
                'message' => 'Succes create new data!',
                'data' => $data
            ]);
        } else {
            return Response()->json([
                'status' => 0,
                'message' => 'Failed create new data!'
            ]);
        }
    }

    // show data 
    public function show()
    {
        return Score::all();
    }

    public function detail($id)
    {
        if (DB::table('score')->where('score_id', $id)->exists()) {
            $detail_score = DB::table('score')
                ->select('score.*')
                ->where('score_id', $id)
                ->get();
            return Response()->json($detail_score);
        } else {
            return Response()->json(['message' => 'Couldnt find the data']);
        }
    }

    //update data 
    public function update($id, Request $request)
    {
        $validator = Validator::make(
            $request->all(),
            [
                'lesson_name' => 'required',
                'score_amount' => 'required'
            ]
        );

        if ($validator->fails()) {
            return Response()->json($validator->errors());
        }

        $update = DB::table('score')
            ->where('score_id', '=', $id)
            ->update([
                'lesson_name' => $request->lesson_name,
                'score_amount' => $request->score_amount
            ]);

        $data = Score::where('score_id', '=', $id)->get();
        if ($update) {
            return Response()->json([
                'status' => 1,
                'message' => 'Success updating data!',
                'data' => $data
            ]);
        } else {
            return Response()->json([
                'status' => 0,
                'message' => 'Failed updating data!'
            ]);
        }
    }

     //delete data 
     public function delete($id){
        $delete = DB::table('score')
        ->where('score_id', '=', $id)
        ->delete();

        if($delete){
            return Response() -> json([
                'status' => 1,
                'message' => 'Succes delete data!'
        ]);
        } else {
            return Response() -> json([
                'status' => 0,
                'message' => 'Failed delete data!'
        ]);
        }

    }
}
