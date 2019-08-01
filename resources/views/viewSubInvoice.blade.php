@extends('layouts.app')
@section('content')

<div class="row" style="margin-top: 50px">
  <div class="col-md-12">
  <div class="box box-success">
    <div class="box-header with-border">
      <h3 class="box-title">Invoices</h3>     
      <!-- /.box-tools -->
    </div>
    <!-- /.box-header -->
    <div class="box-body">
<table class="table table-striped table-hover" id="inv_table">
    <thead>
      <tr>
      	<th>S/N</th>
        <th>Company</th>
        <th>Invoice Name</th>
        <th>Status</th>
        <th>Created At</th>
        <th>Action</th>
        <th></th>
        <th>
        	<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#inv"><i class="fa fa-plus"></i></button>
        </th>
      </tr>
    </thead>
    <tbody>
    	@if(count($inv)>0)
    	@php $i =1; @endphp
    	@foreach($inv as $invo)

      <tr>
      	<td>{{$i++}}</td>
      	<td>@if($invo->organization){{$invo->organization->orgName}}@endif</td>
      	<td>{{$invo->invoiceName}}</td>
        <td>
          @if($invo->status == 0)
          <img src="{{asset('images/yellow.png')}}" style="width: 15px;height: 10px;">
          @elseif($invo->status == 1)
          <img src="{{asset('images/green.png')}}" style="width: 15px;height: 10px;">
          @elseif($invo->status == 2)
          <img src="{{asset('images/red.png')}}" style="width: 15px;height: 10px;">
          @endif
        </td>
        <td>{{$invo->created_at}}</td>
      	<td><a data-toggle="modal" class="btn btn-success" onclick="loadItem({{$invo->id}})"><i class="fa fa-eye" data-toggle="tooltip" data-original-title="View Invoice"></i></a></td>
      	@if($invo->status==0)
      	<td>
      		<a class="disabled btn btn-info" onclick="printFrame({{$invo->id}})"><i class="fa fa-arrow-down" data-toggle="tooltip" data-original-title="Download Invoice"></i></a></td>
      	@else
      	<td><a class="btn btn-info" onclick="printFrame({{$invo->id}})"><i class="fa fa-arrow-down" data-toggle="tooltip" data-original-title="Download Invoice"></i></a></td>
      	@endif
      	
      	
      	<td></td>
      </tr>
      
  <iframe id="invoice{{$invo->id}}" style="display: none;" src="{{url('pdf')}}?id={{$invo->id}}"></iframe>
      @endforeach
    </tbody>
  </table>
  </div>

      @endif
 {{$inv->render()}}
 </div>
    <!-- /.box-body -->
  </div>
  <!-- /.box -->
</div>


<form method="post" action="{{url('/addSubInvoice')}}">
@csrf
<div class="modal" id="inv">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Add New Quote</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
      	<div class="form-group row">
      	<label class="col-sm-12" for="">Quote Name</label><br>
			<div class="col-sm-12">
				<input type="text" class="form-control col-sm-12" name="invoiceName" id="invoiceName" required>
			</div>
      	</div>
      	<div class="form-group row">
      	<label class="col-sm-12" for="">Organization Name</label><br>
			<div class="col-sm-12">
				<select class="form-control col-sm-12" name="orgid" id="orgid" required>
					<option value="">Select Organization</option>
					@if($organ_ddl)
						@foreach($organ_ddl as $organ)
							<option value="{{$organ->id}}">{{$organ->orgName}}</option>
						@endforeach
					@endif
				</select>
			</div>
      	</div>
      	<input type="checkbox" name="type" value="subscription" checked>Subscription Based
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-success">Create Quote</button>
      </div>

    </div>
  </div>
</div>
</form>



@endsection

@section('script')

<script type="text/javascript">
	function loadItem(id)
	{
		window.location.replace("/addNewSubInvoice?id="+id);
		
	}
	function printFrame(id) {
            var frm = document.getElementById('invoice'+id).contentWindow;
            frm.focus();// focus on contentWindow is needed on some ie versions
            frm.print();
            return false;
    }
</script>

<script>
  $(function () {
    $('#inv_table').DataTable()
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