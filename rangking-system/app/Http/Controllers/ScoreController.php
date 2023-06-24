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

        if($validator -> fails()){
            return Response() -> json($validator -> errors());
        }

        $store = Score::create([
            'lesson_name' =>$request->lesson_name,
            'score_amount' => $request->score_amount
        ]);

        $data = Score::where('lesson_name', '=', $request->lesson_name)->get();
        if($store){
            return Response() -> json([
                'status' => 1,
                'message' => 'Succes create new data!',
                'data' => $data
            ]);
        } else 
        {   
            return Response()->json([
                'status' => 0,
                'message' => 'Failed create new data!'
            ]);
        }
    }
}
