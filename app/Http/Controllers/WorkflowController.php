<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Workflow;
use App\Stage;
use App\Filters\WorkflowFilter;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;


class WorkflowController extends Controller
{


  public function __construct()
  {
      $this->middleware('auth');
  }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        try {
          if (count($request->all())==0) {
          $stages=Stage::all();
          $workflows=Workflow::withCount('stages')->paginate(5);
          return view('workflows.list',['workflows'=>$workflows,'stages'=>$stages]);
        }else {
          $stages=Stage::all();
            $workflows=WorkflowFilter::apply($request);
            // return $users;
            return view('workflows.list',['workflows'=>$workflows,'stages'=>$stages]);
        }
        } catch (\Exception $e) {
          return  $e;
        }

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        try {
          $users=User::all();
          return view('workflows.create',['users'=>$users]);
        } catch (\Exception $e) {

        }

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        try {
          $this->validate($request, ['name'=>'required']);
          $wf= new Workflow();
          $wf->name =$request->name;
          $wf->save();

          
          $no_of_stages=count($request->input('stagename'));
          for ($i=0; $i < $no_of_stages; $i++) {
            $stg=new Stage();
            $stg->name=$request->stagename[$i];
            $stg->position=$i;
            $stg->user_id=$request->user_id[$i];
            $stg->workflow_id=$wf->id;
            $stg->save();

           
          }
          return redirect()->route('workflows')->with(['success'=>'Workflow Created Successfully']);
        } catch (\Exception $e) {

        }

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      try {
        $wf=Workflow::find($id);
        return view('workflows.view',['workflow'=>$wf]);
      } catch (\Exception $e) {

      }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        try {
              $users=User::all();
            $wf=Workflow::find($id);
            return view('workflows.edit',['workflow'=>$wf,'users'=>$users]);
        } catch (\Exception $e) {

        }

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
      try {
        $wf= Workflow::find($id);
        if ($this->hasactivereviews($id)) {
        return redirect()->route('workflows.edit',$id)->with('error', 'Workflow is in use by a document in review! Therefore changes cannot be made to the workflow');
      }else{
        $this->validate($request, ['name'=>'required']);
        $wf= Workflow::find($id);
        $wf->name =$request->name;
        $wf->save();
        $no_of_stages=count($request->input('stagename'));
        for ($i=0; $i < $no_of_stages; $i++) {
          $stg=Stage::find($request->stage_id[$i]);
          if($stg){
            
            $stg->name=$request->stagename[$i];
            $stg->position=$i;
            $stg->user_id=$request->user_id[$i];
             $stg->save();
          }else{
            $stg=new Stage();
            $stg->name=$request->stagename[$i];
            $stg->position=$i;
            $stg->user_id=$request->user_id[$i];
            $stg->workflow_id=$wf->id;
             $stg->save();
          }

       }

        return redirect()->route('workflows')->with(['success'=>'Changes saved Successfully']);
      }
      } catch (\Exception $e) {
        return $e->getMessage();
      }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    public function hasactivereviews($id)
    {
      $has_reviews=DB::table('document_reviews')
      ->join('stages', 'document_reviews.stage_id', '=', 'stages.id')
      ->where('document_reviews.status', 0)
      ->where('stages.workflow_id', $id)->exists();
      return $has_reviews;
    }
    public function alterStatus(Request $request)
    {
      
      $wf=Workflow::find($request->id);
      if ($request->status=='true') {
        $wf->status=1;
        $wf->save();
        
        return response()->json('enabled',200);
      }elseif($request->status=='false')
      {
        $wf->status=0;
        $wf->save();
        
        return response()->json('disabled',200);
      }
    

    }

}
