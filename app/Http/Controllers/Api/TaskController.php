<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\TaskRequest;
use App\Models\Task;
use Illuminate\Http\Request;

class TaskController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
//    public function index()
//    {
//        //
//    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  Task $task Route Model Binding
     * @param  App\Http\Requests\TaskRequest $request
     * @return \Illuminate\Http\Response
     */
    public function store(TaskRequest $request, Task $task)
    {
         //$task->create($request->all());

        $this->authorize('create', [Task::class, $request->project_id]);

         Task::create($request->all());

            return response([
                'status'=>200,
                'message'=>'Task Added Successfully'
            ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
//    public function show($id)
//    {
//        //
//    }

    /**
     * Update the specified resource in storage.
     *
     * @param  App\Http\Requests\TaskRequest  $request
     * @param  Task $task Route Model Binding
     * @return \Illuminate\Http\Response
     */
    public function update(TaskRequest $request, Task $task)
    {
       // dd($request);
        $this->authorize('update', $task);

         $task->update($request->all());
         return response([
             'status' => 200,
             'message'=>'Task Updated Successfully'
         ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Task $task)
    {
        $this->authorize('delete', $task);

        $task->delete();
        return response([
            'status'=> 200,
            'message'=>'Task Deleted successfully'
        ]);
    }
}
