<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<div style="width: 1000px">	
<table border="0" width="100%">
	<div>
		<thead> 
	<th style ="width: 60%;font-size: 48px;text-align: left"><img src="dist/img/logo.png" class="img" alt="User Image"></th>

	<th style="width: 40%;font-size: 16px;color: black;text-align: center; font-family:sans-serif; ">1B Abayomi Shonuga Crescent <br>Off Dele Adedeji Street, <br> Lekki Phase 1, <br> Lagos Nigeria.</th>
	</thead>
	</div>
</table><hr style="color: black">
<table border="0" width="100%">
	<div>
		<thead> 
	<th style ="width: 60%;font-size: 16px;text-align: left;">Invoice No: @php echo rand() @endphp <br>Invoice Date: @php echo date("d/m/Y"); @endphp <br> Due Date:@php echo date('d/m/Y', strtotime('+1 months'));  @endphp</th>
	<th style="width: 40%;font-size: 20px;color: red;text-align: center; font-family:sans-serif; ">INVOICE</th>
	</thead>
	</div>
</table>
<hr>
<table border="0" width="100%">
	<div>
		<thead> 
	<th style ="width: 60%;font-size: 20px;text-align: left;">Details of Receiver (Billed To)</th>
	</thead>
	</div>
</table>
<hr>
<table border="0" width="100%">
	<div>
		<thead> 
	@if($organ_get)
	<th style ="width: 60%;font-size: 16px;text-align: left;">Company Name:	{{$organ_get->orgName}} <br>Address:		{{$organ_get->orgAddress}} <br>Country:	{{$organ_get->country}} <br>GSTIN ID: <br>VAT No:</th>
	</thead>
	@endif
	</div>
</table>
<hr>
<table border="0" width="100%" style="border-collapse: collapse;">
	<thead>
		<th width="10%" style="font-family: sans-serif;text-align: left">S/N</th>
	<th width="30%" style="font-family: sans-serif;text-align: left">Description</th>
	<th width="10%" style="font-family: sans-serif;text-align: left">Qty</th>
	<th width="20%" style="font-family: sans-serif;text-align: left">Unit Cost</th>
	<th width="10%" style="font-family: sans-serif;text-align: left">Discount(%)</th>
	<th width="20%" style="font-family: sans-serif;text-align: left">Total</th>
</thead>
</table>
<hr>
<table border="0" width="100%">
	<thead></thead>
	<tbody>
		@if($additem)
		    @php $total=0; $i=1; @endphp
		    @foreach($additem as $addition)
		    @php $total += $addition->quantity * $addition->unitcost; @endphp
		<tr style="text-align: left;">
			<td width="10%">{{$i++}}</td>
			<td width="30%" >{{$addition->description}}</td>
			<td width="10%">{{$addition->quantity}}</td>
			<td width="20%">{{number_format($addition->unitcost,2)}}</td>
			<td width="10%">{{$addition->discount}}%</td>
			<td width="20%"> {{number_format($addition->total,2)}}</td>
		</tr>
		@endforeach
	</tbody>
</table>
<br>	
<br>	
<hr>	
<table border="0" width="100%">	
		<thead></thead>
		<tbody>	
			<tr>	
			<td width="10%"></td><td width="30%"></td><td width="10%"></td>
				
			<td width="20%" ></td>
			<td width="10%" style="font-size: 16px"><b>Subtotal:</b></td>
			<td width="20%" style="text-align: left;">
				<b> {{number_format($total ,2) }}</b>
			</td>
			</tr>
			{{-- <tr>	
			<td width="10%"></td><td width="30%"></td><td width="10%"></td>
				
			<td width="20%" ></td>
			<td width="10%" style="font-size: 16px"><b>Service.Charge:</b></td>
			<td width="20%" style="text-align: left;">
				<b> {{number_format($total * 0.12 ,2) }}</b>
			</td>
			</tr> --}}
			{{-- <tr>	
			<td width="10%"></td><td width="30%"></td><td width="10%"></td>
				
			<td width="20%" ></td>
			<td width="10%" style="font-size: 16px"><b>Total:</b></td>
			<td width="20%" style="text-align: left;">
				<b> {{number_format($total + 0.12*$total ,2) }}</b>
			</td>
			</tr> --}}
			<tr>	
			<td width="10%"></td><td width="30%"></td><td width="10%"></td>
				
			<td width="20%" ></td>
			@if($invoice->hasvat=='1')
			<td width="10%" style="font-size: 16px"><b>VAT 5%:</b></td>
			<td width="20%" style="text-align: left;">
				<b> {{number_format($total * 0.05 ,2) }}</b>
			</td>
			@elseif($invoice->hasvat=='0')
			
			@endif
			</tr>
			<tr>	
			<td width="10%"></td><td width="30%"></td><td width="10%"></td>
				
			<td width="20%" ></td>
			<td width="10%" style="font-size: 16px"><b>TOTAL:</b></td>
			@if($invoice->hasvat== '1')
			<td width="20%" style="text-align: left;text-decoration: overline;">
				<b><u> 
				{!! $addition->currency == 'dollar' ? '$' : '&#8358' !!}
				{{number_format(($total * 0.05) + ($total) ,2) }}
				</u></b>
			</td>
			@elseif($invoice->hasvat=='0')
			<td width="20%" style="text-align: left;text-decoration: overline;">
					<b><u> 
					{!! $addition->currency == 'dollar' ? '$' : '&#8358' !!}
					{{number_format(($total) ,2) }}
					</u></b>
				</td>
			@endif
			</tr>
		</tbody>
		@endif
</table>
<br><br><br>
<hr>	
<table>	
		<thead></thead>
	<tbody>
		<tr style="text-align: center;">
			<td width="10%"></td>
			<td width="30%">Make All cheques Payable <br><br>Account Name:Snapnet Limited <br>Bank:Diamond Bank Plc. <br>Account #: 0073821499 <br>TIN:-02298087-0001 <br>For enquiries contact info@snapnet.com.ng</td>
			<td width="10%"></td>
			<td width="10%"></td>
			<td width="20%"></td>
			<td width="20%"></td>
			
		</tr>
		
	</tbody>
</table>
</div>
</body>
</html>