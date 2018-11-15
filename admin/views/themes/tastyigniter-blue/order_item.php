<?php echo get_header();?>
<div class="row content">
	<div class="col-md-12">
		<div class="row wrap-vertical">
			<ul id="nav-tabs" class="nav nav-tabs">
				<li class="active"><a href="#general" data-toggle="tab"><?php echo lang('text_tab_general'); ?></a></li>
				<li><a href="#menus" data-toggle="tab"><?php echo sprintf(lang('text_tab_menu'), ''); ?></span></a></li>
			</ul>
		</div>
		<form role="form" id="add-form" class="form-horizontal" accept-charset="utf-8" method="POST" action="<?php echo $_action; ?>">
			<div class="tab-content">
				<div id="general" class="tab-pane row wrap-all active">
					<div class="form-group">
						<div class="col-sm-12">
							<label for="input-location" class="control-label"><?php echo lang('column_location'); ?></label>
							<select name="location_id" id="input-location" class="form-control" disabled="disabled">
							<?php foreach ($locations as $location) { ?>
								<?php if (!empty($location['location_id'])) { ?>
									<?php if ($location['location_id'] == $location_id) { ?>
										<option value="<?php echo $location['location_id']; ?>" selected="selected"><?php echo $location['location_name']; ?></option>
									<?php } else { ?>
										<option value="<?php echo $location['location_id']; ?>"><?php echo $location['location_name']; ?></option>
									<?php } ?>
								<?php } ?>
							<?php } ?>
							</select>
							<?php echo form_error('location', '<span class="text-danger">', '</span>'); ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-12">
							<label for="" class="control-label">Order</label>
						</div>
					</div>
					
					<div class="form-group">
						<input type="hidden" name="order_id" id="order_id" value="<?php echo $order_id; ?>">
						<div class="col-sm-3">
							<label for="" class="control-label"><?php echo lang('label_order_id'); ?></label>
							<div class="">
								#<?php echo $order_id; ?>
							</div>
						</div>
						<div class="col-sm-3">
							<label for="input-name" class="control-label"><?php echo lang('label_order_type'); ?></label>
							<div class="">
								<?php echo $order_type; ?>
							</div>
						</div>
						<div class="col-sm-3">
							<label for="input-name" class="control-label"><?php echo lang('label_order_time'); ?></label>
							<div class="">
								<?php echo $order_time; ?>
							</div>
						</div>
						<div class="col-sm-3">
							<label for="input-status" class="control-label"><?php echo lang('label_status'); ?></label>
							<div class="">
								<?php echo $status_name; ?>
							</div>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-12">
							<label for="" class="control-label">Customer</label>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-3">
							<label for="input-name" class="control-label"><?php echo lang('label_customer_name'); ?></label>
							<div class="">
								<div style="float:left;">
												<?php if (!empty($customer_id)) { ?>
													<a href="<?php echo $customer_edit; ?>"><?php echo $first_name; ?> <?php echo $last_name; ?></a>
												<?php } else { ?>
													<?php echo $first_name; ?> <?php echo $last_name; ?> <span class="badge">Guest Order</span>
												<?php } ?>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<label for="input-name" class="control-label"><?php echo lang('label_email'); ?></label>
							<div class="">
								<div style="float:left;"><?php echo $email; ?></div>
							</div>
						</div>
						<div class="col-sm-3">
							<label for="input-name" class="control-label"><?php echo lang('label_telephone'); ?></label>
							<div class="">
								<div style="float:left;"><?php echo $telephone; ?></div>
							</div>
						</div>
						<div class="col-sm-3">
							<label for="input-name" class="control-label"><?php echo lang('label_ip_address'); ?></label>
							<div class="">
								<?php echo $ip_address; ?>
							</div>
						</div>
						<div class="col-sm-3">
							<label for="input-name" class="control-label"><?php echo lang('label_user_agent'); ?></label>
							<div class="">
								<?php echo $user_agent; ?>
							</div>
						</div>
					</div>

				</div>

				<div id="menus" class="tab-pane row wrap-all">
					<div class="form-group">
						<div class="col-md-12">
							<a href="" class="btn btn-success pull-left" id="btn_back_to_categories" style="display:none;"> << <?php echo $this->lang->line('button_menu_back'); ?></a>
							
							<button type="button" id="btn_proceed" class="btn btn-primary pull-right" style="border:1px solid #0c5e72;background:#0c5e72;padding:10px;font-size:16px;"><?php echo $this->lang->line('button_order_proceed'); ?></button>

							<a href="<?php echo site_url('orders/edit');?>?id=<?php echo $order_id; ?>" style="margin-right:10px;" class="btn-lg btn-default pull-right"><?php echo $this->lang->line('button_icon_back'); ?></a>

							<!-- <span id="totalAmountInCart" style="margin-right:10px;margin-left:10px;margin-top:5px;"><?php echo sprintf('%0.4f',$menuTotalAmount); ?></span> -->
						</div>
						<input type="hidden" name="" id="loc_id">
					</div>
					<div class="row">

						<div class="row">
							<div class="col-sm-12" style="margin:10px 5px;">
								<div id="added_menu" class="row" style="margin:10px 5px;"></div>
							</div>
						</div>

						<!-- category block -->
						<div id="category-box" class="col-sm-12">
							<div class="row" style="margin:10px 5px;">
								<div class="form-group">
									<?php foreach ($categories as $category): ?>
										<div class="col-sm-4 image-container" id="<?php echo $category['category_id']; ?>">
											<?php if(!empty($category['image'])): ?>
												<img src="<?php echo assets_url("images/".$category['image']); ?>" >
											<?php else: ?>
												<img src="<?php echo assets_url("images/data/no_photo.png"); ?>" >
											<?php endif; ?>

											<div class="image-caption">
												<h1><?php echo $category['name']; ?></h1>
	      										<p><?php echo $category['description']; ?></p>
      										</div>
										</div>
									<?php endforeach ?>
								</div>
							</div>
						</div>

						<!-- menus -->
						<div id="menu-box" class="col-sm-12" style="display:none;">
							<input type="hidden" name="" id="category_id">
							<input type="hidden" name="" id="box_block_menu_id" value="0,">
							<div id="add_box" class="row" style="margin:10px 5px;"></div>
						</div>

					</div>

					<div class="form-group">
						<h3><label for="input-total" class="col-sm-3 control-label"><?php echo lang('text_total'); ?></label></h3>
						<div class="col-sm-5">
							<h3><span id="totalAmount"><?php echo sprintf('%0.4f',$menuTotalAmount); ?></span></h3>
						</div>
					</div>
					<div>
						<span style="color:#717475;font-style:italic;font-size:12px;">! click anywhere to refresh the amount</span>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>

<!-- <div class="box_message">
	<div id="block_content">test</div>
</div> -->

<script type="text/javascript"><!--

$(document).ready(function(){
	$("#totalAmount").text("0.0000");
	if($("#added_menu").html() == ""){
		$("#totalAmount").html("0.0000");
		$("#btn_proceed").attr("disabled", true);
		$("#btn_proceed").html("Proceed");
	}
});

$('body').click(function(){
	if($("#added_menu").html() == ""){
		$("#totalAmount").html("0.0000");
		$("#btn_proceed").attr("disabled", true);
		$("#btn_proceed").html("Proceed");
	}
});

loadTables();

$(document).on('change','#input-order-type',function(){
	if($(this).val() == '1'){
		loadTables();
		$("#input-table").attr('disabled', false); 

		$('#input-payment').append('<option value="card" selected="selected">Card</option>');
	}else{
		$("#input-table").html('<option value=""></option>');
		$("#input-table").attr('disabled', true);
	}
});

$(document).on('click','.image-container',function(){
	var id = $(this).attr('id');
	$("#category_id").val(id);
	$(".overlay").show();
	$("#add_box").html("");
	$.ajax({
		url: '<?php echo site_url("/menus/CategoryMenus"); ?>',
		data: "category="+id+"&location_id="+$("#loc_id").val(),
		method: 'POST',
		dataType: 'json',
		success: function(json) {

			if (json.status) {
		        if (json.data.length > 0) {
		            for (var rec=0; rec<json.data.length; rec++){ 
		            	var mid = json.data[rec].menu_id;

		                var menus = '<div class="order_menu_box col-md-3" id="b_'+json.data[rec].menu_id+'">'+
				            '<div style="float:left;width:10%;vertical-align:middle;"><a href="#" class="sub" style="border:1px solid #eee;padding:10px;" id="sub_'+json.data[rec].menu_id+'"><span class="fa fa-minus" style="margin-top:80px;cursor:pointer;"></span></a></div>'+
				            '<div id="content_" style="float:left;width:75%;">'+
					          	'<div class="box_menu_container">';
					          	if(json.data[rec].menu_photo != ''){
					          		menus += '<img src="'+ js_assets_url('/images/'+json.data[rec].menu_photo)+'">';
					          	}else{
					          		menus += '<img src="'+ js_assets_url('/images/data/no_photo.png')+'">';
					          	}
					          		menus += '<div class="box_caption_menu">'+
					          		'<h1 id="hd_'+json.data[rec].menu_id+'">'+json.data[rec].menu_name+'</h1>'+
					          		'</div>'+
					          	'</div>'+
					            '<div style="font-size:10px;">'+
					                '<input type="text" class="menuquantity" style="width:20px;border:none;" id="menu_qty_'+json.data[rec].menu_id+'" name="menuitemsquantity[]" value="0" autocomplete="off"><input type="hidden" name="menuitemstotal[]" value="0" id="menuitem_'+json.data[rec].menu_id+'">'+
					                '<span class="fa fa-rupee"></span> <span style="font-style:10px;" id="amnt_'+json.data[rec].menu_id+'">'+Math.round(json.data[rec].menu_price)+'</span>'+
					                '<input type="hidden" name="menuitems[]" value="'+json.data[rec].menu_id+'" />'+
					            '</div>'+
				            '</div>'+
				            '<div style="float:left;width:10%;vertical-align:middle;"><a href="#" style="border:1px solid #eee;margin-left:5px;padding:10px;" class="add" id="add_'+json.data[rec].menu_id+'"><span class="fa fa-plus" style="cursor:pointer;margin-top:80px;"></span></a></div>'+
				            '<br clear="all">'+
				        '</div>';
				        
				        if(!$("#add_box").find('#b_'+mid).length){
				           	$("#add_box").append(menus);
			            }

		            }
		        }
		    }

		    setTimeout(function(){
				$("#category-box").fadeOut(function(){
					$("#btn_back_to_categories").fadeIn();
					$("#menu-box").fadeIn();
				});
				$(".overlay").hide();
			}, 1000);
		}
	});
});

$("#btn_back_to_categories").click(function(e){
	e.preventDefault();
	$("#btn_back_to_categories").fadeOut();
	$("#menu-box").fadeOut(function(){
		$("#category-box").fadeIn();
	});
});

$(document).on("click", ".removeButton", function(){
	var removeid = $(this).attr('id');
	var data = removeid.split("_");
    $(this).closest("div").remove();
    $("#menu_qty_"+data[1]).val("0");
    $("#menuitem_"+data[1]).val("0");
    var menuQty = $("#menu_qty_"+data[1]).val();
    var menuPce = $("#amnt_"+data[1]).html();
    var menuTotal = parseFloat(menuPce * menuQty).toFixed(2);
	updateTotal();

	var menuQty = $("#menu_qty_"+data[1]).val("0");

	if($("#added_menu").html() == ""){
		$("#totalAmount").html("0.0000");
		$("#btn_proceed").attr("disabled", true);
		$("#btn_proceed").html("Proceed");
	}
}); 

$(document).on("click",".add", function(e) {
 
 	$(this).addClass('disabled');
 	if($(this).hasClass("disabled")){
        $(this).removeAttr("href");
    }
 	// $(this).addClass('disabled');
 	// $(this).fadeOut();

	e.preventDefault();
	var mid = $(this).attr('id');
	var data = mid.split("_");
	var header = $("#hd_"+data[1]).text();
	var menuQty = $("#menu_qty_"+data[1]).val();
	var menuPce = $("#amnt_"+data[1]).html();

	var mqty = 0;

	$.ajax({
		url: '<?php echo site_url("/menus/mautocomplete"); ?>',
		data: "menu_id="+data[1]+"&location_id="+$("#loc_id").val(),
		method: 'POST',
		dataType: 'json',
		success: function(json) {
			mqty = json.qty; 

			if(parseInt(mqty) > parseInt(menuQty)){
				// alert(menuQty);

				if(!$("#added_menu").find('#tb_'+data[1]).length){
					$('#added_menu').append('<div class="box_added_menu" id="tb_'+data[1]+'"><table><tr><td><div class="name" style="margin-right:5px;" id="hd_'+data[1]+'">'+header+'</div><td style="width:40%"><a href="#" id="added_sub_'+data[1]+'" class="added_sub"><span class="fa fa-minus"></span></a><input name="menuitemsquantity[]" type="text" class="menuquantity" style="width:40%;border:1px solid #eee;margin:2px 5px;text-align:center" value="1" id="qty_'+data[1]+'" autocomplete="off" ><input type="hidden" name="menuitemstotal[]" value="'+menuPce+'"><a href="#" id="added_add_'+data[1]+'" class="added_add"><span class="fa fa-plus"></span></a><td><span class="fa fa-rupee"></span>'+menuPce+'<td><span class="removeButton" id="r_'+data[1]+'" style="margin-left:10px;cursor:pointer;">x</span><input type="hidden" name="menuitems[]" value="' + data[1] + '" /></tr></table></div>');
				}else{
					var qty = parseInt($("#qty_"+data[1]).val());
					$("#added_menu").find('#tb_'+data[1]).remove();
					
					qty++;
					$('#added_menu').append('<div class="box_added_menu" id="tb_'+data[1]+'"><table><tr><td><div class="name" style="margin-right:5px;" id="hd_'+data[1]+'">'+header+'</div><td style="width:40%"><a href="#" id="added_sub_'+data[1]+'" class="added_sub"><span class="fa fa-minus"></span></a><input name="menuitemsquantity[]" type="text" class=menuquantity" style="width:40%;border:1px solid #eee;margin:2px 5px;text-align:center" value="'+qty+'" id="qty_'+data[1]+'" autocomplete="off" ><input type="hidden" name="menuitemstotal[]" value="'+menuPce+'"><a href="#" id="added_add_'+data[1]+'" class="added_add"><span class="fa fa-plus"></span></a><td><span class="fa fa-rupee"></span>'+menuPce+'<td><span id="r_'+data[1]+'" class="removeButton" style="margin-left:10px;cursor:pointer;">x</span><input type="hidden" name="menuitems[]" value="' + data[1] + '" /></tr></table></div>');
				}

				menuQty++;

				// if(menuQty == 1){
				// 	var menuTotal = parseFloat(menuPce * (menuQty - 1)).toFixed(2);
				// }else{
				// 	var menuTotal = parseFloat(menuPce * menuQty).toFixed(2);
				// }
				var menuTotal = parseFloat(menuPce * menuQty).toFixed(2);

				
				$("#menu_qty_"+data[1]).val(menuQty);
				$("#amnt_"+data[1]).text(menuPce);
				$("#menu_qty_"+data[1]).next().val(menuTotal);
				$("#qty_"+data[1]).next().val(menuTotal);
				$("#menuitem_"+data[1]).val("0");
				updateTotal();

				$('.add').removeClass('disabled');
			}else{
				alert('The quantity can not go beyond.')
			}
		}
	});

	
});

$(document).on("click",".added_add", function(e) {
	e.preventDefault();
	var mid = $(this).attr('id');
	var data = mid.split("_");
	var header = $("#hd_"+data[2]).text();
	var menuQty = $("#qty_"+data[2]).val();
	var menuPce = $("#qty_"+data[2]).parent().next().text();

	var mqty = 0;

	$.ajax({
		url: '<?php echo site_url("/menus/mautocomplete"); ?>',
		data: "menu_id="+data[2]+"&location_id="+$("#loc_id").val(),
		method: 'POST',
		dataType: 'json',
		success: function(json) {
			mqty = json.qty; 

			if(parseInt(mqty) > parseInt(menuQty)){

				if(!$("#added_menu").find('#tb_'+data[2]).length){
					$('#added_menu').append('<div class="box_added_menu" id="tb_'+data[2]+'"><table><tr><td><div class="name" style="margin-right:5px;" id="hd_'+data[2]+'">'+header+'</div><td style="width:40%"><a href="#" id="added_sub_'+data[2]+'" class="added_sub"><span class="fa fa-minus"></span></a><input name="menuitemsquantity[]" type="text" class="menuquantity" style="width:40%;border:1px solid #eee;margin:2px 5px;text-align:center" value="1" id="qty_'+data[2]+'" autocomplete="off" ><input type="hidden" name="menuitemstotal[]" value="'+menuPce+'"><a href="#" id="added_add_'+data[2]+'" class="added_add"><span class="fa fa-plus"></span></a><td><span class="fa fa-rupee"></span>'+menuPce+'<td><span style="margin-left:10px;cursor:pointer;"  id="r_'+data[1]+'" class="removeButton">x</span><input type="hidden" name="menuitems[]" value="' + data[1] + '" /></tr></table></div>');
				}else{
					var qty = parseInt($("#qty_"+data[2]).val());
					$("#added_menu").find('#tb_'+data[2]).remove();
					
					qty++;
					$('#added_menu').append('<div class="box_added_menu" id="tb_'+data[2]+'"><table><tr><td><div class="name" style="margin-right:5px;" id="hd_'+data[2]+'">'+header+'</div><td style="width:40%"><a href="#" id="added_sub_'+data[2]+'" class="added_sub"><span class="fa fa-minus"></span></a><input name="menuitemsquantity[]" type="text" class="menuquantity" style="width:40%;border:1px solid #eee;margin:2px 5px;text-align:center" value="'+qty+'" id="qty_'+data[2]+'" autocomplete="off" ><input type="hidden" name="menuitemstotal[]" value="'+menuPce+'"><a href="#" id="added_add_'+data[2]+'" class="added_add"><span class="fa fa-plus"></span></a><td><span class="fa fa-rupee"></span>'+menuPce+'<td><span style="margin-left:10px;cursor:pointer;" id="r_'+data[1]+'" class="removeButton">x</span><input type="hidden" name="menuitems[]" value="' + data[2] + '" /></tr></table></div>');
				}

				menuQty++;
				var menuTotal = parseFloat(menuPce * menuQty).toFixed(2);
				$("#qty_"+data[2]).val(menuQty);
				$("#menu_qty_"+data[2]).val(menuQty);
				$("#amnt_"+data[2]).text(menuPce);
				$("#qty_"+data[2]).next().val(menuTotal);
				updateTotal();
			}else{
				alert('The quantity can not go beyond.')
			}
		}
	});
});

$(document).on("click",".sub", function(e) {
	e.preventDefault();
	var mid = $(this).attr('id');
	var data = mid.split("_");
	var header = $("#hd_"+data[1]).text();
	var menuQty = $("#menu_qty_"+data[1]).val();
	var menuPce = $("#amnt_"+data[1]).html();

	if($("#added_menu").html() == ""){
		$("#totalAmount").html("0.0000");
	}

	if(menuQty >= 1){
		menuQty--;
		var qty = parseInt($("#qty_"+data[1]).val());
		$("#added_menu").find('#tb_'+data[1]).remove();
			
		qty--;
		$('#added_menu').append('<div class="box_added_menu" id="tb_'+data[1]+'"><table><tr><td><div class="name" style="margin-right:10px;" id="hd_'+data[1]+'">'+header+'</div><td style="width:40%"><a href="#" id="added_sub_'+data[1]+'" class="added_sub"><span class="fa fa-minus"></span></a><input name="menuitemsquantity[]" type="text" class="menuquantity" style="width:40%;border:1px solid #eee;margin:2px 5px;text-align:center" value="'+qty+'" id="qty_'+data[1]+'" autocomplete="off" ><input type="hidden" name="menuitemstotal[]" value="'+menuPce+'"><a href="#" id="added_add_'+data[1]+'" class="added_add"><span class="fa fa-plus"></span></a><td><span class="fa fa-rupee"></span>'+menuPce+'<td><span style="margin-left:10px;cursor:pointer;"  id="r_'+data[1]+'" class="removeButton">x</span><input type="hidden" name="menuitems[]" value="' + data[1] + '" /></tr></table></div>');
	}

	if(menuQty == 0){
		$("#added_menu").find('#tb_'+data[1]).remove();
		// $("#add_"+data[1]).show();
	}

	var menuTotal = parseFloat(menuPce * menuQty).toFixed(2);
	$("#menu_qty_"+data[1]).val(menuQty);
	$("#amnt_"+data[1]).text(menuPce);
	$("#menu_qty_"+data[1]).next().val(menuTotal);
	updateTotal();
});

$(document).on("click",".added_sub", function(e) {
	e.preventDefault();
	var mid = $(this).attr('id');
	var data = mid.split("_");
	var header = $("#hd_"+data[2]).text();
	var menuQty = $("#qty_"+data[2]).val();
	var menuPce = $("#qty_"+data[2]).parent().next().text();

	if(menuQty == 0){
		$("#add_"+data[2]).fadeIn();
	}

	if($("#added_menu").html() == ""){
		$("#totalAmount").html("0.0000");
	}

	if(menuQty >= 1){
		menuQty--;
		var qty = parseInt($("#qty_"+data[2]).val());
		$("#added_menu").find('#tb_'+data[2]).remove();
			
		qty--;
		$('#added_menu').append('<div class="box_added_menu" id="tb_'+data[2]+'"><table><tr><td><div class="name" style="margin-right:10px;" id="hd_'+data[2]+'">'+header+'</div><td style="width:40%"><a href="#" id="added_sub_'+data[2]+'" class="added_sub"><span class="fa fa-minus"></span></a><input name="menuitemsquantity[]" type="text" class="menuquantity" style="width:40%;border:1px solid #eee;margin:2px 5px;text-align:center" value="'+qty+'" id="qty_'+data[2]+'" autocomplete="off" ><input type="hidden" name="menuitemstotal[]" value="'+menuPce+'"><a href="#" id="added_add_'+data[2]+'" class="added_add"><span class="fa fa-plus"></span></a><td><span class="fa fa-rupee"></span>'+menuPce+'<td><span style="margin-left:10px;cursor:pointer;"  id="r_'+data[1]+'" class="removeButton">x</span><input type="hidden" name="menuitems[]" value="' + data[2] + '" /></tr></table></div>');
	}

	if(menuQty == 0){
		$("#added_menu").find('#tb_'+data[2]).remove();
		// $("#add_"+data[2]).show();
	}

	var menuTotal = parseFloat(menuPce * menuQty).toFixed(2);
	$("#qty_"+data[2]).val(menuQty);
	$("#menu_qty_"+data[2]).val(menuQty);
	$("#amnt_"+data[2]).text(menuPce);
	$("#qty_"+data[2]).next().val(menuTotal);
	updateTotal();
});

$("#loc_id").val($('#input-location').val());

function loadTables(){
	$("#loc_id").val($('#input-location').val());
	$("#input-table").children('option:not(:first)').remove();
    $.ajax({
		url: '<?php echo site_url("/locations/tableLocations"); ?>',
		data: "location_id="+$("#loc_id").val(),
		method: 'POST',
		dataType: 'json',
		success: function(json) {
			if (json.status) {
		        if (json.data.length > 0) {
		            for (var rec=0; rec<json.data.length; rec++){ 
		            	var tables = '<option value="'+json.data[rec].table_id+'">'+json.data[rec].table_name+'</option>';
				        $("#input-table").append(tables);
		            }
		        }
		    }
		}
	});
}

$(document).on('change','#input-location',function(){
	$(".overlay").show();
	setTimeout(function(){
		loadTables();
		$(".overlay").hide();
	}, 3000);

});

$('input[name=\'menu\']').select2({
	placeholder: 'Start typing...',
	minimumInputLength: 2,
	ajax: {
		url: '<?php echo site_url("/orders/menuautocomplete"); ?>',
		dataType: 'json',
		quietMillis: 100,
		data: function (term, page) {
			return {
				term: term, //search term
				location_id: $("#loc_id").val(),
				page_limit: 10 // page size
			};
		},
		results: function (data, page, query) {
			return { results: data.results };
		}
	}
});

function updateTotal(){
	var menuTotals = 0;
	$("input[name='menuitemstotal[]']").each(function(){
	    menuTotals += parseFloat($(this).val());
	});  
	menuTotals = menuTotals.toFixed(4);
	$("#totalAmount").text(menuTotals);
	if($("#totalAmount").text() > 0){
		$("#btn_proceed").attr("disabled", false);
		$("#btn_proceed").html("<span class='fa fa-save'></span> Proceed");
	}else{
		$("#btn_proceed").attr("disabled", true);
		$("#btn_proceed").html("Proceed");
	}
}

$("#btn_proceed").attr("disabled", true);

$("#btn_proceed").click(function(){
	if($("#totalAmount").text() > 0){
		$("#add_box").html("");
		$('#add-form').submit();
	}else{
		alert('No Menu added to cart. Please add at least one Menu.');
	}
});


//--></script>
<?php echo get_footer(); ?>