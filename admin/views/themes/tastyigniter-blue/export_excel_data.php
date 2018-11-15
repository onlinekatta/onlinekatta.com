<?php
	header("Content-type: application/octet-stream");
	header("Content-Disposition: attachment; filename=$filename");
	header("Pragma: no-cache");
	header("Expires: 0");
?>
<div class="row content">
	<div class="col-md-12">
		<div class="panel panel-default panel-table">
			<div class="form-group" style="padding:10px;margin-bottom:50px;">
				<div class="table-responsive">
					<table class="table table-hover tablesorter">
				        <thead>
				            <tr>
				                <th class="header">Item</th>
				                <th class="header">Location</th>                           
				                <th class="header">Qty</th>                           
				                <th class="header">Price</th>  
				                <th class="header">Amount</th>   
				                <th class="header">Updated On</th>
				            </tr>
				        </thead>
				        <tbody>
				            <?php
				            if (isset($items_stocks) && !empty($items_stocks)) {
				                foreach ($items_stocks as $item) {
				                    ?>
				                    <tr>
				                        <td><?php echo $item['item_name']; ?></td>  
				                        <td><?php echo $item['location_name']; ?></td> 
				                        <td><?php echo $item['item_qty']; ?></td>                       
				                        <td><?php echo $item['item_price']; ?></td>
				                        <td><?php echo $item['item_qty']*$item['item_price']; ?></td>
				                        <td><?php echo $item['updated_at']; ?></td>
				                    </tr>
				                    <?php
				                }
				            } else {
				                ?>
				                <tr>
				                    <td colspan="5">There is no items.</td>    
				                </tr>
				            <?php } ?>
				 
				        </tbody>
				    </table>
				</div>
			</div>
		</div>
	</div>
</div>