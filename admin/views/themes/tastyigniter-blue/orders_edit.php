<?php echo get_header(); ?>
<div class="row content">
	<div class="col-md-12">
		<div class="row wrap-vertical">
			<ul id="nav-tabs" class="nav nav-tabs">
				<li class="active"><a href="#general" data-toggle="tab"><?php echo lang('text_tab_general'); ?></a></li>
				<li><a onclick="addURL();" href="#menus" data-toggle="tab"><?php echo sprintf(lang('text_tab_menu'), $total_items); ?></span></a></li>
			</ul>
		</div>

		<form role="form" id="edit-form" class="form-horizontal" accept-charset="utf-8" method="POST" action="<?php echo $_action; ?>">
			<div class="tab-content">
				<div id="general" class="tab-pane row wrap-all active">
					<div class="row">
						<div class="col-xs-12 col-sm-4">
							<div class="panel panel-default">
								<div class="panel-heading"><h3 class="panel-title"><?php echo lang('text_order_details'); ?></h3></div>
								<div class="panel-body">
									<div class="form-group col-xs-12">
										<label for="" class="control-label"><?php echo lang('label_order_id'); ?></label>
										<div class="">
											#<?php echo $order_id; ?>
										</div>
									</div>
									<div class="form-group col-xs-12">
										<label for="input-name" class="control-label"><?php echo lang('label_order_type'); ?></label>
										<div class="">
											<?php echo $order_type; ?>
										</div>
									</div>
									<div class="form-group col-xs-12">
										<label for="input-name" class="control-label"><?php echo lang('label_order_time'); ?></label>
										<div class="">
											<?php echo $order_time; ?>
										</div>
									</div>
									<div class="form-group col-xs-12">
										<label for="input-status" class="control-label"><?php echo lang('label_status'); ?></label>
										<div class="">
											<?php echo $status_name; ?>
										</div>
									</div>
									<div class="form-group col-xs-12">
										<label for="input-name" class="control-label"><?php echo lang('label_payment_method'); ?></label>
										<div class="">
											<?php echo $payment; ?>
											<?php if ($paypal_details) { ?>
												<a class="view_details"><?php echo lang('text_transaction_detail'); ?></a><br />
											<?php } ?>
										</div>
									</div>
									<div class="paypal_details" style="display:none">
										<ul>
											<?php foreach ($paypal_details as $key => $value) { ?>
												<li>
													<span><?php echo $key; ?></span> <?php echo $value; ?>
												</li>
											<?php } ?>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-4">
							<div class="panel panel-default">
								<div class="panel-heading"><h3 class="panel-title"><?php echo lang('text_customer_details'); ?></h3></div>
								<div class="panel-body">
									<div class="form-group col-xs-12 box_edit">
										<label for="input-name" class="control-label"><?php echo lang('label_customer_name'); ?></label>
										<div class="">
											<div style="float:left;">
												<?php if (!empty($customer_id)) { ?>
													<a href="<?php echo $customer_edit; ?>"><?php echo $first_name; ?> <?php echo $last_name; ?></a>
												<?php } else { ?>
													<?php echo $first_name; ?> <?php echo $last_name; ?> <span class="badge">Guest Order</span>
												<?php } ?>
											</div>
											<a href="<?php echo $customer_edit; ?>" class="edit" style="float:right;"><i class="fa fa-pencil"></i></a>
										</div>
									</div>
									<div class="form-group col-xs-12 box_edit" id="<?php echo $customer_id; ?>">
										<label for="input-name" class="control-label"><?php echo lang('label_email'); ?></label>
										<div class="">
											<div style="float:left;"><?php echo $email; ?></div>
											<a href="#" class="edit" id="edit_email" style="float:right;"><i class="fa fa-pencil"></i></a>
										</div>
									</div>
									<div class="form-group col-xs-12 box_edit">
										<label for="input-name" class="control-label"><?php echo lang('label_telephone'); ?></label>
										<div class="">
											<div style="float:left;"><?php echo $telephone; ?></div>
											<a href="#" class="edit" id="edit_phone" style="float:right;"><i class="fa fa-pencil"></i></a>
										</div>
									</div>
									<div class="form-group col-xs-12">
										<label for="input-name" class="control-label"><?php echo lang('label_ip_address'); ?></label>
										<div class="">
											<?php echo $ip_address; ?>
										</div>
									</div>
									<div class="form-group col-xs-12">
										<label for="input-name" class="control-label"><?php echo lang('label_user_agent'); ?></label>
										<div class="">
											<?php echo $user_agent; ?>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-4">
							<div class="panel panel-default">
								<div class="panel-body">
									<div class="form-group">
										<label for="input-name" class="control-label col-xs-12"><?php echo lang('label_invoice'); ?></label>
										<div class="col-xs-12">
											<?php if (!empty($invoice_no)) { ?>
												<div class="pull-left">
													<?php echo $invoice_no; ?>
												</div>
												<div class="pull-right">&nbsp;
													<a href="<?php echo site_url("orders/invoice/view/12/{$order_id}"); ?>" class="btn btn-success btn-xs view-invoice" title="<?php echo lang('button_view_invoice'); ?>" target="_blank"><i class="fa fa-eye"></i></a>
												</div>
												<div class="pull-right">
													<a id="print-invoice" class="btn btn-success btn-xs" title="<?php echo lang('button_print_invoice'); ?>"><i class="fa fa-print"></i></a>
													<div id="print_box">
														<ul>
															<li><a id="print-normal-invoice" title="<?php echo lang('button_print_normal_invoice'); ?>"><i class="fa fa-file-o"></i> Normal (A4)</a></li>
															<li><a id="print-dedicated-invoice" title="<?php echo lang('button_print_tm_invoice'); ?>"><i class="fa fa-file-text"></i> Counter Print</a></li>
														</ul>
													</div>
												</div>
											<?php } else { ?>
												<button type="button" class="btn btn-info btn-xs create-invoice"><i class="fa fa-cog"></i> <?php echo lang('button_create_invoice'); ?></button>
											<?php } ?>
										</div>
									</div>
									<div class="form-group col-xs-12">
										<label for="input-name" class="control-label"><?php echo lang('label_order_total'); ?></label>
										<div class="">
											<?php echo $order_total; ?>
										</div>
									</div>
									<div class="form-group col-xs-12">
										<label for="input-name" class="control-label"><?php echo lang('label_order_date'); ?></label>
										<div class="">
											<?php echo $date_added; ?>
										</div>
									</div>
									<div class="form-group col-xs-12">
										<label for="input-name" class="control-label"><?php echo lang('label_date_modified'); ?></label>
										<div class="">
											<?php echo $date_modified; ?>
										</div>
									</div>
									<div class="form-group col-xs-12">
										<label for="input-name" class="control-label"><?php echo lang('column_notify'); ?></label>
										<div class="">
											<?php if ($notify === '1') { ?>
												<?php echo lang('text_email_sent'); ?>
											<?php } else { ?>
												<?php echo lang('text_email_not_sent'); ?>
											<?php } ?>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-xs-12 col-sm-6">
							<div class="panel panel-default">
								<div class="panel-heading"><h3 class="panel-title"><?php echo lang('text_tab_restaurant'); ?> - <span class="text-muted"><?php echo $location_name; ?></span></h3></div>
								<div class="panel-body">
									<div class="form-group col-xs-12">
										<span><?php echo $location_address; ?></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-6">
							<div class="panel panel-default">
								<div class="panel-heading"><h3 class="panel-title"><?php echo lang('text_tab_delivery_address'); ?></h3></div>
								<div class="panel-body">
									<?php if ($check_order_type === '1') { ?>
									<div class="form-group col-xs-12">
										<div class="">
											<span><?php echo $customer_address; ?></span>
										</div>
									</div>
									<?php } else { ?>
										<p><?php echo lang('text_no_delivery_address'); ?></p>
									<?php } ?>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-xs-12 col-sm-12">
							<div class="panel panel-default">
								<div class="panel-heading"><h3 class="panel-title"><?php echo lang('label_comment'); ?></h3></div>
								<div class="panel-body">
									<div class="form-group col-xs-12">
										<div class="">
											<?php if(!empty($comment)) { ?>
												<?php echo $comment; ?>
											<?php } else { ?>
												<?php echo lang('text_no_order_comment'); ?>
											<?php } ?>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-xs-12">
							<div class="panel panel-default">
								<div class="panel-heading"><h3 class="panel-title"><?php echo lang('text_status_history'); ?></h3></div>
								<div class="panel-body">
									<div class="table-responsive">
										<table height="auto" class="table table-striped table-border table-no-spacing" id="history">
											<thead>
											<tr>
												<th><?php echo lang('column_time_date'); ?></th>
												<th><?php echo lang('column_staff'); ?></th>
												<th><?php echo lang('column_assignee'); ?></th>
												<th><?php echo lang('column_status'); ?></th>
												<th class="left" width="35%"><?php echo lang('column_comment'); ?></th>
												<th class="text-center"><?php echo lang('column_notify'); ?></th>
											</tr>
											</thead>
											<tbody>
											<?php if ($status_history) { ?>
												<?php foreach ($status_history as $history) { ?>
													<tr>
														<td><?php echo $history['date_time']; ?></td>
														<td><?php echo $history['staff_name']; ?></td>
														<td>
															<?php foreach ($staffs as $staff) { ?>
																<?php if ($staff['staff_id'] === $history['assignee_id']) { ?>
																	<?php echo $staff['staff_name']; ?>
																<?php } ?>
															<?php } ?>
														</td>
														<td><span class="label label-default" style="background-color: <?php echo $history['status_color']; ?>;"><?php echo $history['status_name']; ?></span></td>
														<td class="text-left"><?php echo $history['comment']; ?></td>
														<td class="text-center"><?php echo ($history['notify'] === '1') ? $this->lang->line('text_yes') : $this->lang->line('text_no'); ?></td>
													</tr>
												<?php } ?>
											<?php } else { ?>
												<tr>
													<td colspan="5"><?php echo lang('text_no_status_history'); ?></td>
												</tr>
											<?php } ?>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-xs-12">
							<div class="panel panel-default">
								<div class="panel-heading"><h3 class="panel-title"><?php echo lang('text_tab_status'); ?></h3></div>
								<div class="panel-body">
									<div class="col-xs-12 col-sm-3">
										<label for="input-assign-staff" class="control-label"><?php echo lang('label_assign_staff'); ?></label>
										<div class="">
											<input type="hidden" name="old_assignee_id" value="<?php echo $assignee_id; ?>" />
											<input type="hidden" name="old_status_id" value="<?php echo $status_id; ?>" />
											<select name="assignee_id" class="form-control">
												<option value=""><?php echo lang('text_please_select'); ?></option>
												<?php foreach ($staffs as $staff) { ?>
													<?php if ($staff['staff_id'] === $assignee_id) { ?>
														<option value="<?php echo $staff['staff_id']; ?>" <?php echo set_select('assignee_id', $staff['staff_id'], TRUE); ?> ><?php echo $staff['staff_name']; ?></option>
													<?php } else { ?>
														<option value="<?php echo $staff['staff_id']; ?>" <?php echo set_select('assignee_id', $staff['staff_id']); ?> ><?php echo $staff['staff_name']; ?></option>
													<?php } ?>
												<?php } ?>
											</select>
											<?php echo form_error('assignee_id', '<span class="text-danger">', '</span>'); ?>
										</div>
									</div>
									<div class="col-xs-12 col-sm-2">
										<label for="input-name" class="control-label"><?php echo lang('label_status'); ?></label>
										<div class="">
											<select name="order_status" id="" class="form-control" onChange="getStatusComment();">
												<?php foreach ($statuses as $status) { ?>
													<?php if ($status['status_id'] === $status_id) { ?>
														<option value="<?php echo $status['status_id']; ?>" <?php echo set_select('order_status', $status['status_id'], TRUE); ?> ><?php echo $status['status_name']; ?></option>
													<?php } else { ?>
														<option value="<?php echo $status['status_id']; ?>" <?php echo set_select('order_status', $status['status_id']); ?> ><?php echo $status['status_name']; ?></option>
													<?php } ?>
												<?php } ?>
											</select>
											<?php echo form_error('order_status', '<span class="text-danger">', '</span>'); ?>
										</div>
									</div>
									<div class="col-xs-12 col-sm-5">
										<label for="input-name" class="control-label"><?php echo lang('label_comment'); ?></label>
										<div class="">
											<textarea name="status_comment" id="" class="form-control" rows="3"><?php echo set_value('status_comment'); ?></textarea>
											<?php echo form_error('status_comment', '<span class="text-danger">', '</span>'); ?>
										</div>
									</div>
									<div class="col-xs-12 col-sm-2 wrap-none">
										<label class="control-label"><?php echo lang('label_notify'); ?></label>
										<div class="">
											<div id="input-notify" class="btn-group btn-group-switch" data-toggle="buttons">
												<label class="btn btn-danger active"><input type="radio" name="status_notify" value="0" <?php echo set_radio('status_notify', '0', TRUE); ?>><?php echo lang('text_no'); ?></label>
												<label class="btn btn-success"><input type="radio" name="status_notify" value="1" <?php echo set_radio('status_notify', '1'); ?>><?php echo lang('text_yes'); ?></label>
											</div>
											<?php echo form_error('status_notify', '<span class="text-danger">', '</span>'); ?>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div id="menus" class="tab-pane row wrap-all">
					<div class="panel panel-default panel-table">
						<div>
							<a href="<?php echo $order_item_add; ?>#menus" id="add_item" style="border:1px solid #5492af;background-color:#5492af;padding:4px 15px;color:#fff;border-radius:2px;margin-right:2px;">Add New Menu</a>
						</div>
						<div class="table-responsive">
							<table height="auto" class="table table-condensed table-border">
								<thead>
									<tr>
										<th></th>
										<th width="15%"></th>
										<th width="60%"><?php echo lang('column_name_option'); ?></th>
										<th class="text-left"><?php echo lang('column_price'); ?></th>
										<th class="text-right"><?php echo lang('column_total'); ?></th>
									</tr>
								</thead>
								<tbody>
									<?php foreach ($cart_items as $cart_item) { ?>
									<tr id="<?php echo $cart_item['id']; ?>">
										<td>
											<a href="#" class="btn_edit">Edit</a>&nbsp;&nbsp;
											<a href="#" class="btn_delete">Delete</a>
										</td>
										<td><?php echo $cart_item['qty']; ?>x</td>
										<td><?php echo $cart_item['name']; ?><br />
										<?php if (!empty($cart_item['options'])) { ?>
											<div><small><?php echo $cart_item['options']; ?></small></div>
										<?php } ?>
										<?php if (!empty($cart_item['comment'])) { ?>
											<div><small><b><?php echo $cart_item['comment']; ?></b></small></div>
										<?php } ?>
										</td>
										<td class="text-left"><?php echo $cart_item['price']; ?></td>
										<td class="text-right"><?php echo $cart_item['subtotal']; ?></td>
									</tr>
									<?php } ?>
									<?php $total_count = 1; ?>
									<?php foreach ($totals as $total) { ?>
										<tr>
											<td></td>
											<td class="<?php echo ($total_count === 1) ? 'thick' : 'no'; ?>-line" width="1"></td>
											<td class="<?php echo ($total_count === 1) ? 'thick' : 'no'; ?>-line"></td>
											<?php if ($total['code'] === 'order_total') { ?>
												<td class="thick-line text-left"><b><?php echo $total['title']; ?></b></td>
												<td class="thick-line text-right"><b><?php echo $total['value']; ?></b></td>
											<?php } else { ?>
												<td id="total-order-<?php $total_count; ?>" class="<?php echo ($total_count === 1) ? 'thick' : 'no'; ?>-line text-left"><?php echo $total['title']; ?></td>
												<td class="<?php echo ($total_count === 1) ? 'thick' : 'no'; ?>-line text-right"><?php echo $total['value']; ?></td>
											<?php } ?>
										</tr>
										<?php $total_count++; ?>
									<?php } ?>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>
<div style="display: none;" id="invoice-print-div"></div>
<script type="text/javascript">
function addURL(){   
	window.location.href=js_site_url('orders/edit?id='+<?php echo $order_id; ?>+'#menus')
}

$(document).ready(function() { 

	$('.btn_delete').on('click', function(e){
		e.preventDefault();
		var id = $(this).parent().parent().attr('id');
  		$.ajax({
		    url: js_site_url('orders/delete_menu'),
		    type: 'POST',
		    data: 'menu_id='+id+'&order_id='+<?php echo $order_id; ?>,
		    success: function(json) {
		    	location.reload(true);
		    	window.location.href = js_site_url('orders/edit?id='+<?php echo $order_id; ?>+'#menus');
		    }
	    });
	    $(this).parent().parent().fadeOut();
	});

	var textQuantity = '';

	$('.btn_edit').on('click', function(e){
		e.preventDefault();
		var id = $(this).parent().parent().attr('id');
		var quantity = $(this).parent().parent().find("td:eq(1)").text();
		$(this).parent().parent().find("td:eq(1)").html("<input type='text' value='"+quantity+"' style='width:50px;margin-right:2px;padding:3px;border:1px solid #eee;'><button type='button' class='btn_save' style='border:1px solid #5492af;background-color:#5492af;padding:2px;color:#fff;border-radius:2px;margin-right:2px;'>Save</button><button type='button' class='btn_cancel' style='border:1px solid #5492af;padding:2px;color:#5492af;border-radius:2px;'>cancel</button>");

		textQuantity = quantity;
	});

	$(document).on('click','.btn_save', function(){
		var id = $(this).parent().parent().attr('id');
		var price = $(this).parent().parent().find("td:eq(3)").text();
		price = price.substring(1, price.length);

		var quantity = $(this).prev().val();
		var newQuantity = parseInt(quantity)+'x';
		var newMenuTotal = parseInt(quantity)*price;
		$(this).parent().parent().find("td:eq(4)").text('£'+newMenuTotal);
		
		$(this).parent().text(newQuantity);

		$.ajax({
		    url: js_site_url('orders/edit_menu'),
		    type: 'POST',
		    data: 'menu_id='+id+'&order_id='+<?php echo $order_id; ?>+'&quantity='+parseInt(quantity)+'&total='+newMenuTotal,
		    success: function(json) {
		    	location.reload(true);
			    window.location.href = js_site_url('orders/edit?id='+<?php echo $order_id; ?>+'#menus');
		    }
	    });

	});

	$(document).on('click','.btn_cancel', function(){
		$(this).parent().text(textQuantity);
	});

	// edit Email

	var textEmail = '';

	$('#edit_email').on('click', function(e){
		e.preventDefault();
		var id = $(this).parent().parent().attr('id');
		var email = $(this).prev().text();
		$(this).parent().html("<input type='text' value='"+email+"' style='width:150px;margin-right:2px;padding:3px;border:1px solid #eee;'><button type='button' class='btn_save_email' style='border:1px solid #5492af;background-color:#5492af;padding:2px;color:#fff;border-radius:2px;margin-right:2px;'>Save</button><button type='button' class='btn_cancel_email' style='border:1px solid #5492af;padding:2px;color:#5492af;border-radius:2px;'>cancel</button>");

		textEmail = email;
	});

	$(document).on('click','.btn_save_email', function(){
		var email = $(this).prev().val();
		$(this).parent().text(email);

		$.ajax({
		    url: js_site_url('orders/edit_email'),
		    type: 'POST',
		    data: 'order_id='+<?php echo $order_id; ?>+'&email='+email,
		    success: function(json) {}
	    });

	});

	$(document).on('click','.btn_cancel_email', function(){
		$(this).parent().text(textEmail);
	});

	// edit telephone

	var textPhone = '';

	$('#edit_phone').on('click', function(e){
		e.preventDefault();
		var id = $(this).parent().parent().attr('id');
		var phone = $(this).prev().text();
		$(this).parent().html("<input type='text' value='"+phone+"' style='width:150px;margin-right:2px;padding:3px;border:1px solid #eee;'><button type='button' class='btn_save_phone' style='border:1px solid #5492af;background-color:#5492af;padding:2px;color:#fff;border-radius:2px;margin-right:2px;'>Save</button><button type='button' class='btn_cancel_phone' style='border:1px solid #5492af;padding:2px;color:#5492af;border-radius:2px;'>cancel</button>");

		textPhone = phone;
	});

	$(document).on('click','.btn_save_phone', function(){
		var phone = $(this).prev().val();
		$(this).parent().text(phone);

		$.ajax({
		    url: js_site_url('orders/edit_phone'),
		    type: 'POST',
		    data: 'order_id='+<?php echo $order_id; ?>+'&phone='+phone,
		    success: function(json) {}
	    });

	});

	$(document).on('click','.btn_cancel_phone', function(){
		$(this).parent().text(textPhone);
	});

  	$('.view_details').on('click', function(){
  		if($('.paypal_details').is(':visible')){
     		$('.paypal_details').fadeOut();
   			$('.view_details').attr('class', '');
		} else {
   			$('.paypal_details').fadeIn();
   			$('.view_details').attr('class', 'active');
		}
	});

  	$('.create-invoice').on('click', function(){
	    $.ajax({
		    url: js_site_url('orders/create_invoice'),
		    type: 'POST',
		    dataType: 'json',
		    data: 'order_id=<?php echo $order_id; ?>',
		    success: function(json) {
			    window.location.href = json['redirect'];
		    }
	    });
	});

	$('#print-invoice').click(function(){
		$("#print_box").toggle();
	});

	$('#print-normal-invoice').click(function(){
		$.ajax({
		    url: js_site_url('orders/invoice/view/12/<?php echo $order_id; ?>'),
		    type: 'POST',
		    dataType: '',
		    data: '',
		    success: function(json) {
		    	$('#invoice-print-div').html(json);
			    $('#invoice-container').printThis({
				    header: ""
				});
			    $('#invoice-print-div').html('');
			    $("#print_box").toggle();
		    }
	    });
	});

	$('#print-dedicated-invoice').click(function(){
		$.ajax({
		    url: js_site_url('orders/invoice/view/4/<?php echo $order_id; ?>'),
		    type: 'POST',
		    dataType: '',
		    data: '',
		    success: function(json) {
		    	$('#invoice-print-div').html(json);
			    $('#invoice-container').printThis({
				    header: ""
				});
			    $('#invoice-print-div').html('');
			    $("#print_box").toggle();
		    }
	    });
	});

});
</script>
<script type="text/javascript"><!--
function getStatusComment() {
	if ($('select[name="order_status"]').val()) {
		$.ajax({
			url: js_site_url('statuses/comment_notify?status_id=') + encodeURIComponent($('select[name="order_status"]').val()),
			dataType: 'json',
			success: function(json) {
				$('textarea[name="status_comment"]').html(json['comment']);

				if (json['notify'] === '1') {
					$('input[name="notify"][value="1"]').parent().click();
				} else {
					$('input[name="notify"][value="0"]').parent().click();
				}
			}
		});
	}
}
	$('select[name="order_status"]').trigger('change');
//--></script>
<?php echo get_footer(); ?>