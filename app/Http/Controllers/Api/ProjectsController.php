<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\ProjectRequest;
use App\Http\Resources\ProjectCollection;
use App\Http\Resources\ProjectResource;
use App\Models\Project;
use Illuminate\Http\Request;

class ProjectsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct()
    {
        $this->authorizeResource(Project::class, 'project');
    }
    public function index()
    {
        //$projects = Project::all();
        //show all projects to login user who get project with there resp id user_id->id(project_id)
        $projects = Project::where('user_id', auth()->user()->id)->paginate();
        return new ProjectCollection($projects);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\ProjectRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProjectRequest  $request)
    {
        $addNewProject =  auth()->user()->projects()->create($request->all());
        return new ProjectResource($addNewProject);
    }

    /**
     * Display the specified resource.
     *
     * @param  Project $project ie Route model binding
     * @return \Illuminate\Http\Response
     */
    public function show(Project $project)
    {
        return new ProjectResource($project);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\ProjectRequest  $request
     * @param  Project $project
     * @return \Illuminate\Http\Response
     */
    public function update(ProjectRequest $request, Project $project)
    {
        //dd($request);
        $project->update($request->all());
        //return new ProjectResource($project);
        return response(['project' => new ProjectResource($project),
                         'message' => 'Update successfully'], 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Project $project)
    {
        $project->delete();
        return [
            'status'=>'OK',
            'message'=>'Project Deleted successfully'
        ];
    }
}
