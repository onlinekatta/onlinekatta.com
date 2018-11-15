<?php 
	if($width == '4'):
?>
	<style type="text/css" media="print">
	@media print {
	  @page { margin: 0; }
	}
	</style>
	<div id="invoice-container" class="container">
		<div class="row" style="font-size:10px;">
			<table>
				<tr>
					<td valign="top"><h5><?php echo lang('text_invoice'); ?></h5></td>
					<td valign="top" text-align="right"><h5><?php echo lang('label_order_id'); ?><?php echo $order_id; ?></h5></td>
				</tr>
				<?php if($location_name): ?>
					<tr>
						<td colspan="2" valign="top" style="font-size:10px;">
							<address>
								<span class="text-muted"><?php echo lang('text_restaurant'); ?>:</span><br>
								<strong><?php echo $location_name; ?></strong><br>
								<?php echo $location_address; ?>
							</address>
						</td>
					</tr>
				<?php endif; ?>
				<tr>
					<td colspan="2" valign="top" style="font-size:10px;">
						<address>
							<span class="text-muted"><?php echo lang('text_customer'); ?>:</span><br>
							<strong><?php echo $first_name; ?> <?php echo $last_name; ?></strong><br>
							<?php echo $email; ?>
						</address>
						<!-- <?php if ($check_order_type === '1') { ?>
						<address>
							<span class="text-muted"><?php echo lang('text_deliver_to'); ?>:</span><br>
							<?php echo $customer_address; ?>
						</address>
						<?php } ?> -->
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<table width="100%">
							<tr>
								<td style="font-size:10px;width:50%;" valign="top">
									<address style="margin-right:5px;padding-right:10px;">
										<strong><?php echo lang('text_invoice_no'); ?>:</strong><br>
										<?php echo $invoice_no; ?>
									</address>
								</td>
								<td style="font-size:10px;width:50%;" valign="top" text-align="right">
									<address>
										<strong><?php echo lang('text_invoice_date'); ?>:</strong><br>
										<?php echo $invoice_date; ?><br><br>
									</address>
								</td>
							</tr>
							<tr>
								<td style="font-size:10px;width:50%;" valign="top">
									<address style="margin-right:5px;padding-right:10px;">
										<strong><?php echo lang('text_payment'); ?>:</strong><br>
										<?php echo $payment; ?> 
									</address>
								</td>
								<td style="font-size:10px;width:50%;" valign="top" text-align="right">
									<address>
										<strong><?php echo lang('text_order_date'); ?>:</strong><br>
										<?php echo $date_added; ?>
									</address>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<table class="table table-condensed" width="100%">
							<thead style="font-size:10px;">
								<tr>
									<th></th>
									<th class="text-left" width="20%"><?php echo lang('column_name_option'); ?></th>
									<th class="text-left"><?php echo lang('column_price'); ?></th>
									<th class="text-right"><?php echo lang('column_total'); ?></th>
								</tr>
							</thead>
							<tbody>
								<?php 
									if(count($cart_items) == 1){
										foreach ($cart_items as $cart_item) { 
								?>
									<tr id="<?php echo $cart_item['id']; ?>" style="font-size:10px;">
										<td><?php echo $cart_item['qty']; ?>x</td>
										<td width="20%" style="width:50px !important;" !important class="text-left">
											<?php 
												$item = $cart_item['name'];
												$print_item = wordwrap(wordwrap($item, 10, " ", true));
												echo $print_item; 
											?><br />
											<?php if (!empty($cart_item['options'])) { ?>
												<div><small><?php echo lang('text_plus'); ?><?php echo $cart_item['options']; ?></small></div>
											<?php } ?>
											<?php if (!empty($cart_item['comment'])) { ?>
												<div><small><b><?php echo $cart_item['comment']; ?></b></small></div>
											<?php } ?>
										</td>
										<td class="text-left"><?php echo $cart_item['price']; ?></td>
										<td class="text-right"><?php echo $cart_item['subtotal']; ?></td>
									</tr>
								<?php 
										} 
									}else{
										foreach ($cart_items as $cart_item) {
								?>	
									<tr id="<?php echo $cart_item['id']; ?>" style="font-size:10px;">
										<td><?php echo $cart_item['qty']; ?>x</td>
										<td width="20%" style="width:50px !important;" !important class="text-left">
											<?php 
												$item = $cart_item['name'];
												$print_item = wordwrap(wordwrap($item, 10, " ", true));
												echo substr($print_item,0,20).'...'; 
											?><br />
											<?php if (!empty($cart_item['options'])) { ?>
												<div><small><?php echo lang('text_plus'); ?><?php echo $cart_item['options']; ?></small></div>
											<?php } ?>
											<?php if (!empty($cart_item['comment'])) { ?>
												<div><small><b><?php echo $cart_item['comment']; ?></b></small></div>
											<?php } ?>
										</td>
										<td class="text-left"><?php echo $cart_item['price']; ?></td>
										<td class="text-right"><?php echo $cart_item['subtotal']; ?></td>
									</tr>

								<?php 
										}
									}
								?>
								<?php $total_count = 1; ?>
								<?php foreach ($totals as $total) { ?>
									<tr style="font-size:10px;">
										<td class="<?php echo ($total_count === 1) ? 'thick' : 'no'; ?>-line"></td>
										<td class="<?php echo ($total_count === 1) ? 'thick' : 'no'; ?>-line"></td>
										<?php if ($total['code'] === 'order_total') { ?>
											<td class="thick-line text-left"><b><?php echo $total['title']; ?></b></td>
											<td class="thick-line text-right"><b><?php echo $total['value']; ?></b></td>
										<?php } else { ?>
											<td class="<?php echo ($total_count === 1) ? 'thick' : 'no'; ?>-line text-left"><?php echo $total['title']; ?></td>
											<td class="<?php echo ($total_count === 1) ? 'thick' : 'no'; ?>-line text-right"><?php echo $total['value']; ?></td>
										<?php } ?>
									</tr>
									<?php $total_count++; ?>
								<?php } ?>
							</tbody>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="2" style="font-size:10px;">
						<p class="text-center">
							<?php echo lang('text_invoice_thank_you'); ?><br>
							<?php 
								$mresto = array();
								$mresto = explode("/", site_url());
								if($mresto[3]):
									echo $mresto[0]."//".$mresto[2]."/".$mresto[3]; 
								else:
									echo $mresto[0]."//".$mresto[2]; 
								endif;
								// echo $sitename;
							?>
						</p>
					</td>
				</tr>
			</table>
		</div>
	</div>
<?php
	else:
?>
<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title><?php echo lang('text_invoice'); ?> - <?php echo $this->config->item('site_name'); ?></title>
	<?php echo get_style_tags(); ?>

	<style>
		body {
			background-color: #FFF;
			font-family: "Lato",Arial,sans-serif;
		}
		.invoice-title h2, .invoice-title h3 {
			display: inline-block;
		}
		.table > tbody > tr > .no-line {
			border-top: none;
		}
		.table > thead > tr > .no-line {
			border-bottom: none;
		}
		.table > tbody > tr > .thick-line {
			border-top: 2px solid;
		}
	</style>
	
</head> 
<body>
	<div id="invoice-container" class="container">
		<div class="row">
			<div class="col-xs-<?php echo $width; ?>" id="box_print_content">
				<div class="row">
					<div class="col-xs-12">
						<div class="invoice-title">
							<h2><?php echo lang('text_invoice'); ?></h2><h3 class="pull-right"><?php echo lang('label_order_id'); ?><?php echo $order_id; ?></h3>
						</div>
						<hr>
						<div class="row">
							<div class="col-xs-6">
								<address>
									<span class="text-muted"><?php echo lang('text_restaurant'); ?>:</span><br>
									<strong><?php echo $location_name; ?></strong><br>
									<?php echo $location_address; ?>
								</address>
							</div>
							<div class="col-xs-6 text-right">
								<img src="<?php echo $invoice_logo; ?>" style="max-width: 80%;"/>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-6">
								<address>
									<span class="text-muted"><?php echo lang('text_customer'); ?>:</span><br>
									<strong><?php echo $first_name; ?> <?php echo $last_name; ?></strong><br>
									<?php echo $email; ?>
								</address>
								<?php if ($check_order_type === '1') { ?>
								<address>
									<span class="text-muted"><?php echo lang('text_deliver_to'); ?>:</span><br>
									<?php echo $customer_address; ?>
								</address>
								<?php } ?>
							</div>
							<div class="col-xs-3 text-left">
								<address>
									<strong><?php echo lang('text_invoice_no'); ?>:</strong><br>
									<?php echo $invoice_no; ?>
								</address>
								<address>
									<strong><?php echo lang('text_invoice_date'); ?>:</strong><br>
									<?php echo $invoice_date; ?><br><br>
								</address>
							</div>
							<div class="col-xs-3 text-right">
								<address>
									<strong><?php echo lang('text_payment'); ?>:</strong><br>
									<?php echo $payment; ?>
								</address>
								<address>
									<strong><?php echo lang('text_order_date'); ?>:</strong><br>
									<?php echo $date_added; ?>
								</address>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12">
						<div class="table-responsive">
							<table class="table table-condensed">
								<thead>
								<tr>
									<th></th>
									<th class="text-left" width="50%"><?php echo lang('column_name_option'); ?></th>
									<th class="text-left"><?php echo lang('column_price'); ?></th>
									<th class="text-right"><?php echo lang('column_total'); ?></th>
								</tr>
								</thead>
								<tbody>
								<?php foreach ($cart_items as $cart_item) { ?>
									<tr id="<?php echo $cart_item['id']; ?>">
										<td><?php echo $cart_item['qty']; ?>x</td>
										<td width="50%" class="text-left"><?php echo $cart_item['name']; ?><br />
											<?php if (!empty($cart_item['options'])) { ?>
												<div><small><?php echo lang('text_plus'); ?><?php echo $cart_item['options']; ?></small></div>
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
										<td class="<?php echo ($total_count === 1) ? 'thick' : 'no'; ?>-line"></td>
										<td class="<?php echo ($total_count === 1) ? 'thick' : 'no'; ?>-line"></td>
										<?php if ($total['code'] === 'order_total') { ?>
											<td class="thick-line text-left"><b><?php echo $total['title']; ?></b></td>
											<td class="thick-line text-right"><b><?php echo $total['value']; ?></b></td>
										<?php } else { ?>
											<td class="<?php echo ($total_count === 1) ? 'thick' : 'no'; ?>-line text-left"><?php echo $total['title']; ?></td>
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

				<hr>
				<div class="row">
					<div class="col-md-12">
						<p class="text-center">
							<?php echo lang('text_invoice_thank_you'); ?><br>
							<?php 
								$mresto = array();
								$mresto = explode("/", site_url());
								if($mresto[3]){
									echo $mresto[0]."//".$mresto[2]."/".$mresto[3]; 
								}
								else if($mresto[4]){
									echo $mresto[0]."//".$mresto[2]."/".$mresto[3]."/".$mresto[4]; 
								}
								else{
									echo $mresto[0]."//".$mresto[2];
								}

								// echo $sitename;
							?>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<?php
	endif;
?>