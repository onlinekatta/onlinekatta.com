<?php
	header("Content-type: application/octet-stream");
	header("Content-Disposition: attachment; filename=$filename");
	header("Pragma: no-cache");
	header("Expires: 0");
?>
<div class="row">
	<div class="col-md-12">
		<table class="table table-responsive" id="table_mess">
			<body>
				<tr>
					<td>Customer ID</td>
					<td><strong><?php echo $customer_id; ?></strong></td>
				</tr>
				<tr>
					<td><strong>First Name</strong></td>
					<td><?php echo $first_name; ?></td>
					<td><strong>Email</strong></td>
					<td><?php echo $email; ?></td>
				</tr>
				<tr>
					<td><strong>Last Name</strong></td>
					<td><?php echo $last_name; ?></td>
					<td><strong>Phone</strong></td>
					<td><?php echo $telephone; ?></td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<div class="row">
	<div class="col-md-12">
		<table class="table table-responsive" id="table_mess">
			<body>
				<tr>
					<td></td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<div class="row">
	<div class="col-md-12">
		<table class="table table-responsive" id="table_mess">
			<thead>
				<tr>
					<td class="thead"><strong>Location</td>
					<td class="thead"><strong>Plan</strong></td>
					<td class="thead"><strong>Period</strong></td>
					<td class="thead"><strong>Payment</strong></td>
					<td class="thead"><strong>UnClear Balance</strong></td>
					<td class="thead"><strong>Meal Allocated</strong></td>
					<td class="thead"><strong>Redimed</strong></td>
					<td class="thead"><strong>Not Redimed</strong></td>
				</tr>
			</thead>
			<tbody>
				<?php if ($subscriptions_history) { 
					$row = 1;
				?>
				<?php foreach($subscriptions_history as $subscription_history){ ?>
					<tr>
						<td><?php echo $subscription_history['location_name']; ?></td>
						<td><?php echo $subscription_history['subscription_name']; ?></td>
						<td><?php echo $subscription_history['start_date']; ?> - <?php echo $subscription_history['payment_deadline']; ?></td>
						<td class="payment_row" id="payment_row_<?php echo $subscription_history['customer_subscription_id']; ?>">
							<table id="table_amount">
								<?php 
									$this->db->from('customers_subscription_history');
									$this->db->where('customer_subscription_id', $subscription_history['customer_subscription_id']);
									$subscriptions_payments_history = $this->db->get();
												
									foreach($subscriptions_payments_history->result() as $subscriptions_payment_history){
								?>
									<tr><td><?php echo $subscriptions_payment_history->payment; ?> (<?php echo $subscriptions_payment_history->created_at; ?>)</td></tr>
								<?php } ?>
							</table>
						</td>
						<td><?php echo $subscription_history['balance']; ?></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				<?php } ?>
				<?php } ?>
			</tbody>
		</table>
	</div>
</div>