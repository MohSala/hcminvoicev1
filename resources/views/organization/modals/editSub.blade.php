<form method="post" action="{{url('/add_item')}}">
@csrf
<input type="hidden" name="id" id="id" value="{{$edit_sub->id}}">
<!-- Modal body -->
    
      	<!-- <input type="hidden" class="form-control col-sm-12" name="orgid" id="orgid" value=""> -->
          <div class="form-group row">
      	<label class="col-sm-12" for="">Currency</label><br>
			<div class="col-sm-12">
				<select name="currency" value="{{$edit_sub->currency}}" id="" class=" form-control col-sm-12">
        <option value="none">Select Currency</option>
        <option value="dollar">$</option>
        <option value="naira">&#8358</option>
        </select>
			</div>
      	</div>
        <div class="form-group row">
      	<label class="col-sm-12" for="">Dollar Rate</label><br>
			<div class="col-sm-12">
				<input type="text" class="form-control col-sm-12" name="rate" id="" value="{{$edit_sub->rate}}" placeholder="If Naira value or non converting Dollar value, put 1">
			</div>
      	</div>
      	<div class="form-group row">
      	<label class="col-sm-12" for="">Product Name</label><br>
			<div class="col-sm-12">
        <input type="hidden" name="invoice_id" value="{{$edit_sub->invoice_id}}">  
				<input type="text" class="form-control col-sm-12" name="productName" id="productName" value="{{$edit_sub->productName}}" required>
			</div>
      	</div>
      	<div class="form-group row">
      	<label class="col-sm-12" for="">Product Description</label><br>
			<div class="col-sm-12">
			<input type="text" class="form-control col-sm-12" name="description" id=""  value="{{$edit_sub->description}}" required>
			</div>
      	</div>
          <div class="form-group row">
      	<label class="col-sm-12" for="">Validity Period</label><br>
			<div class="col-sm-12">
				<input type="text" class="form-control col-sm-12" name="validity" id="" value="{{$edit_sub->validity}}">
			</div>
      	</div>
      	<div class="form-group row">
      	<label class="col-sm-12" for="">Quantity</label><br>
			<div class="col-sm-12">
			<input type="number" class="form-control col-sm-12" name="quantity" id=""  value="{{$edit_sub->quantity}}" required>
			</div>
      	</div>
      	<div class="form-group row">
      	<label class="col-sm-12" for="">Unit Cost</label><br>
			<div class="col-sm-12">
			<input type="number" class="form-control col-sm-12" name="unitcost" id=""  value="{{$edit_sub->unitcost}}" required>
			</div>
      	</div>
        <div class="form-group row">
        <label class="col-sm-12" for="">Discount</label><br>
      <div class="col-sm-12">
      <input type="number" class="form-control col-sm-12" name="discount" id=""  value="{{$edit_sub->discount}}" required>
      </div>
        </div>
      

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-success">Edit Item</button>
      </div>

   
</form>