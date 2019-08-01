@extends('layouts.app')
@section('content')


<div class="row" style="margin-top: 50px">
  <div class="col-md-12">
  <div class="box box-success">
    <div class="box-header with-border">
      <h3 class="box-title">All Users</h3>     
      <!-- /.box-tools -->
    </div>
    <!-- /.box-header -->
    <div class="box-body">
      <table class="table table-striped table-hover" id="user_table">
        <thead>
          <tr>
            <th>S/N</th>
            <th>Fullname</th>
            <th>Email</th>
            <th>User Type</th>
            <th class="pull-right"></th>
          </tr>
        </thead>
        <tbody>
          @if($userView)
          @php $i=1; @endphp
          @foreach($userView as $user)
          <tr>
            <td>{{$i++}}</td>
            <td>{{$user->name}}</td>
            <td>{{$user->email}}</td>
            <td>{{$user->type}}</td>
            <td class="pull-right">
              @if($user->type == 'normal_user')
              <a data-toggle="modal" class="btn btn-danger" data-target="#approve"  onclick="setID({{$user->id}})"><i class="fa fa-arrows"></i> Change User Type</a>
              @else
              <a data-toggle="modal" class=" disabled btn btn-danger"  onclick=""><i class="fa fa-arrows" data-toggle="tooltip" data-original-title="Edit Organization"></i>  Admin User</a>
              @endif
            </td>
           </tr>
        </tbody>
        @endforeach
        @endif
      </table>
  </div>
  {{$userView->render()}}
    </div>
    <!-- /.box-body -->
  </div>
  <!-- /.box -->
</div>








<form method="post" action="{{url('/approve_change')}}">
@csrf
<div class="modal" id="approve">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Are You sure You want to change user type?</h4>
      </div>

      <!-- Modal body -->
    
<input type="hidden" name="id" id="u_id" >
      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">No</button>
        <button type="submit" class="btn btn-success">Yes</button>
      </div>

    </div>
  </div>
</div>
</form>


@endsection
@section('script')
<script type="text/javascript">
   function setID(id){
        $('#u_id').val(id);
    }

</script>
<!-- page script -->
<script>
  $(function () {
    $('#user_table').DataTable()
    $('#user_').DataTable({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    })
  })
</script>
@endsection