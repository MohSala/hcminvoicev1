@extends('layouts.app')
@section('content')




	<div>
    <!-- Content Header (Page header) -->
    
    <!-- Main content -->
    <section class="invoice">
      <!-- title row -->
      <div class="row">
        <div class="col-xs-12">
          <h2 class="page-header">
            <i class="fa fa-globe"></i> SnapNet, Limited
            <small class="pull-right">Date: @php echo date("d/m/Y"); @endphp</small>
          </h2>
        </div>
        <!-- /.col -->
      </div>
      <!-- info row -->
      <div class="row invoice-info">
        <div class="col-sm-4 invoice-col">
          From
          <address>
            <strong>Snapnet Limited.</strong><br>
            1B Abayomi Shonuga Street<br>
            Lekki Phase 1, Lagos<br>
            Phone: +234(703)4076619<br>
            Email: info@snapnet.com.ng
          </address>
        </div>
        <!-- /.col -->
        <div class="col-sm-4 invoice-col">
          To
          @if($organ_get)
          <address>
          	{{$organ_get->orgAddress}}
		  </address>
		  @endif
        </div>
        <!-- /.col -->
        <div class="col-sm-4 invoice-col">
          @if($invoice->status == 0)
          <b>#Quote No:@php echo rand() @endphp</b><br>
          @else
          <b>#Invoice No: @php echo rand() @endphp</b><br>
          @endif
          <br>
          <b>Payment Due:</b>@php echo date('d/m/Y', strtotime('+1 months'));  @endphp<br>
          <b>Account:</b> 0073821499

        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

      <!-- Table row -->
      <div class="row">
        <div class="col-xs-12 table-responsive">
          <table class="table table-striped table-hover">

            <thead>
            <tr>
              <th>S/N</th>
              <th>Currency</th>
              <th>Product Name</th>
              <th>Product #</th>
              <th>Description</th>
              <th>Qty</th>
              <th>Unit Cost</th>
              <th>Discount</th>
              <th>Total</th>
              <th></th>
              <th><button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#inv"><i class="fa fa-plus"></i></button></th>
              <th></th>
              {{-- <th></th> --}}
              
            </tr>
            </thead>
            <tbody>
            	@if($additem)
		    	@php $total=0;$dtotal=0;$i=1; @endphp
		    	@foreach($additem as $addition)
		    	@php $total += $addition->quantity * $addition->unitcost; @endphp
          @php $dtotal += $addition->total - $addition->total*$addition->discount/100; @endphp
            <tr>
              <td>{{$i++}}</td>
              <td>
              
              @if($addition->currency == 'naira')
              &#8358
              @else
              $
              @endif
              </td>
              <td>{{$addition->productName}}</td>
              <td>{{$addition->id}}</td>
              <td>{{$addition->description}}</td>
              <td>{{$addition->quantity}}</td>
              <td>{{number_format($addition->unitcost,2)}}</td>
              <td>{{$addition->discount}}%</td>
              @if($addition->discount)
              <td>{{number_format($addition->total -$addition->total* $addition->discount/100,2 )}}</td>
              @else
              <td>{{number_format($total,2 )}}</td>
              @endif
              <td></td>
              <td>
                @if($invoice->status == 0)
                <a href="#" class="btn btn-info" onclick="load_org({{$addition->id}})"><i class="fa fa-pencil"></i></a>
                @elseif($invoice->status ==1)
                <a href="#" class="disabled btn btn-default" onclick="load_org({{$addition->id}})"><i class="fa fa-pencil"></i></a>
                @endif
              </td>
             	
           <td>
           <form action="{{ route('delete',$addition->id) }}" method="post">
           @csrf
           @method('delete')
           <button type="submit" class="btn btn-danger"> <i class="fa fa-trash"></i></button>
           </form>
           </td>
           

            </tr>
            @endforeach
            
            </tbody>
          </table>
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
     <div class="row">
        <div class="col-xs-5 pull-right">
          <div class="table-responsive">
            <table class="table">
              
            <tr>
                <td>
                  @if($invoice->hasvat=='0')
                  <a href="{{ route('add.vat',$invoice->id) }}">Add VAT</a>
                  @elseif($invoice->hasvat=='1')
                  <a href="{{ route('remove.vat',$invoice->id) }}">Remove VAT</a>
                  @endif
                </td>
            </tr>   
                  <tr>
                <th style="width:50%">Subtotal:</th>
                <td>{{number_format($dtotal ,2) }}</td>
              </tr>
              
              @if($invoice->hasvat=='0')
              
              @elseif($invoice->hasvat=='1')
              <tr>
                  <th>VAT(5%):</th>
                  <td>{{number_format($dtotal* 0.05 ,2) }}</td>
              </tr>
              @endif
             
              <tr>
                <th>TOTAL:</th>
                @if($invoice->hasvat=='0')
                <td><u><strong>{{number_format(($dtotal) ,2) }}</strong></u></td>
              @elseif($invoice->hasvat=='1')
              <td><u><strong>{{number_format(($dtotal * 0.05) + ($dtotal) ,2) }}</strong></u></td>
              @endif
              
              </tr>
            
            
            </table>
           
          </div>
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

      <!-- this row will not appear when printing -->
      <div class="row no-print">
        <div class="col-xs-12">
        	
        	@if($invoice->status==1)
        	<a class="btn btn-primary pull-right" onclick="printFrame('invoiceDownload')" style="margin-right: 5px;">
            <i class="fa fa-print"></i> Print PDF
          </a>
          {{-- <a class="btn btn-success pull-right" href="{{url('download')}}?id={{$invoice->id}}" style="margin-right: 5px;">
            <i class="fa fa-download"></i> Download Invoice
          </a> --}}
          <a class="btn btn-success pull-right" href="{{url('send_invoice')}}?id={{$invoice->id}}"  style="margin-right: 5px;">
            <i class="fa fa-envelope"></i> Email Invoice
          </a>
        	@else 
         @if(\Auth::user()->type != 'admin_user')
          <a class="btn btn-success pull-right" href="{{url('reviewInvoice').'?invoice_id='.$invoice->id}}" style="margin-right: 5px;">
            <i class="fa fa-envelope"></i> 	Submit For Review
          </a>
          @endif
          @endif
          @if(\Auth::user()->type == 'admin_user' && $invoice->status == 0)
          <a class="btn btn-warning pull-right" onclick="" href="" data-toggle="modal" data-target="#approve" style="margin-right: 5px;">
            <i class="fa fa-check"></i> 	Approve Invoice
          </a>
          @else
          @if(\Auth::user()->type == 'admin_user' || 'normal_user' && $invoice->status == 1)
          <a class="disabled btn btn-warning pull-right" onclick="" href="" data-toggle="modal" data-target="#approve" style="margin-right: 5px;">
            <i class="fa fa-check"></i> 	Invoice Approved
          </a>
          @endif
          @endif
          @if(\Auth::user()->type == 'admin_user' || 'normal_user')
          <a href="" class="btn btn-danger pull-right" onclick="printFrame('downloadQuote')" style="margin-right: 5px;"> <i class="fa fa-files-o"></i>    Generate Quote</a>
          @endif
        </div>
      </div>
    </section>
    <!-- /.content -->
    <div class="clearfix"></div>
   	</div>
   	<iframe id="invoiceDownload" style="display: none;" src="{{url('pdf')}}?id={{$_GET['id']}}"></iframe>
    <iframe id="downloadQuote" style="display: none;" src="{{url('quote')}}?id={{$_GET['id']}}"></iframe>
 		@endif


<form method="post" action="{{url('/add_item')}}">
@csrf
<div class="modal" id="inv">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Add New Item</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
      	<!-- <input type="hidden" class="form-control col-sm-12" name="orgid" id="orgid" value=""> -->
        <div class="form-group row">
      	<label class="col-sm-12" for="">Currency</label><br>
			<div class="col-sm-12">
        <select name="currency" class="form-control col-sm-12" id="">
        <option value="naira">&#8358</option>
        <option value="dollar">$</option>
        </select>
			</div>
      	</div>
      	<div class="form-group row">
      	<label class="col-sm-12" for="">Product Name</label><br>
			<div class="col-sm-12">
				<input type="hidden" name="invoice_id" value="{{$invoice_id}}">
				<input type="text" class="form-control col-sm-12" name="productName" id="productName" required>
			</div>
      	</div>
      	<div class="form-group row">
      	<label class="col-sm-12" for="">Product Description</label><br>
			<div class="col-sm-12">
			<input type="text" class="form-control col-sm-12" name="description" id="" required>
      <input type="hidden" name="rate" value="1">
      {{-- <input type="hidden" name="validity" value="1"> --}}
			</div>

      	</div>
      	<div class="form-group row">
      	<label class="col-sm-12" for="">Quantity</label><br>
			<div class="col-sm-12">
			<input type="number" class="form-control col-sm-12" name="quantity" id="" required>
			</div>
      	</div>
      	<div class="form-group row">
      	<label class="col-sm-12" for="">Unit Cost</label><br>
			<div class="col-sm-12">
			<input type="number" class="form-control col-sm-12" name="unitcost" id="" required>
			</div>
      	</div>
      	<div class="form-group row">
      	<label class="col-sm-12" for="">Discount</label><br>
			<div class="col-sm-12">
			<input type="number" class="form-control col-sm-12" name="discount" id="" required>
			</div>
      	</div>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-success">Create Item</button>
      </div>

    </div>
  </div>
</div>
</form>


<div class="modal" id="manage_org">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Edit Item</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body"> 
      	<div id="manageorg">   </div> 
      </div>

    </div>
  </div>
</div>

<form method="post" action="{{url('/approve_invoice')}}">
@csrf
<div class="modal" id="approve">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Are You sure You want to approve Quote?</h4>
      </div>

      <!-- Modal body -->
    
<input type="hidden" name="id" id="id" value="{{$_GET['id']}}">
      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">No</button>
        <button type="submit" class="btn btn-success">Yes</button>
      </div>

    </div>
  </div>
</div>
</form>


<form method="post" action="{{url('/')}}">
@csrf
<div class="modal" id="email">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Add New Item</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        <!-- <input type="hidden" class="form-control col-sm-12" name="orgid" id="orgid" value=""> -->
        <div class="form-group row">
        <label class="col-sm-12" for="">Company Name</label><br>
      <div class="col-sm-12">
        <input type="hidden" name="invoice_id" value="{{$invoice_id}}">
        @if($organ_get)
        <input type="text" class="form-control col-sm-12" disabled="" name="orgName" value="{{$organ_get->orgName}}" id="" required>
        @endif
      </div>
        </div>
        <div class="form-group row">
        <label class="col-sm-12" for="">Subject</label><br>
      <div class="col-sm-12">
      <input type="text" class="form-control col-sm-12" name="description" id="" required>
      </div>
        </div>
        <div class="form-group row">
        <label class="col-sm-12" for="">Body</label><br>
      <div class="col-sm-12">
      <input type="text" class="form-control col-sm-12" name="quantity" id="" required>
      </div>
        </div>
        <div class="form-group row">
        <label class="col-sm-12" for="">Attachment</label><br>
      <div class="col-sm-12">
      <input type="file" class="form-control col-sm-12" name="quantity" id="" required>
      </div>
        </div>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-success">Send Mail   <i class="fa fa-paper-plane"></i></button>
      </div>

    </div>
  </div>
</div>
</form>

<script type="text/javascript">

	function delete_item(id) {
$({ }); 
          }
	
	function load_org(id)
	{
		$('#manageorg').load("{{url('organization')}}/modals/editItem?id="+id);
		$('#manage_org').modal('show');
	}

function printFrame(id) {
            var frm = document.getElementById(id).contentWindow;
            frm.focus();// focus on contentWindow is needed on some ie versions
            frm.print();
            return false;
}
function changeCheck(id) {

}
</script>


@endsection