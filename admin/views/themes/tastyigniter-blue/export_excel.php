<?php echo get_header();?>
<div class="row content">
	<div class="col-md-12">
		<div class="panel panel-default panel-table">
			<div class="form-group" style="padding:10px;">
				<form action="<?php echo site_url('inventories')?>" method="GET">
					<div class="row">
						<div class="col-sm-3">
							<div class='input-group date'>
			                    <input type='text'  class="form-control" name="from" id='from' />
			                    <span class="input-group-addon">
			                        <span class="fa fa-calendar"></span>
			                    </span>
			                </div>
						</div>
						<div class="col-sm-3">
							<div class='input-group date'>
			                    <input type='text' class="form-control" name="to" id='to' />
			                    <span class="input-group-addon">
			                        <span class="fa fa-calendar"></span>
			                    </span>
			                </div>
						</div>
						<div class="col-sm-3">
							<select name="location" class="form-control">
								<option value=""><?php echo lang('text_select_location'); ?></option>
	                            <?php foreach ($locations as $location) { ?>
	                                <option value="<?php echo $location['location_id']; ?>"><?php echo $location['location_name']; ?></option>   
	                            <?php } ?>
	                        </select>
						</div>
						<div class="col-sm-3">
							<button type="submit" class="btn btn-primary">Load Data</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="panel panel-default panel-table">
			<div class="form-group" style="padding:10px;margin-bottom:50px;">
				<div>
					<a class="pull-right btn btn-primary btn-xs" style="margin-bottom:10px;" href="<?php echo site_url().'inventories/toExcel?from='.$from.'&to='.$to.'&location='.$loc; ?>"><i class="fa fa-file-excel-o"></i> Export Data</a>
				</div>
				<div class="table-responsive">
					<table class="table table-hover tablesorter">
				        <thead>
				            <tr>
				                <th class="header">Item</th>
				                <th class="header">Location</th>                           
				                <th class="header">Qty</th>                           
				                <th class="header">Price</th>   
				                <th class="header">(<span class="fa fa-rupee"></span>) Amount</th>   
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
				                        <td>
				                        	<span class="fa fa-rupee"></span> <?php echo $item['item_price']; ?>
				                        </td>
				                        <td>
				                        	<span class="fa fa-rupee"></span> <?php echo $item['item_qty']*$item['item_price']; ?>
				                        </td>
				                        <td><?php echo $item['updated_at']; ?></td>
				                    </tr>
				                    <?php
				                }
				            } else {
				                ?>
				                <tr>
				                    <td colspan="5">There are no items found for that query.</td>    
				                </tr>
				            <?php } ?>
				 
				        </tbody>
				    </table>

				    <div class="pagination-bar clearfix">
	                    <div class="links"><?php echo $pagination['links']; ?></div>
	                    <div class="info"><?php echo $pagination['info']; ?></div>
	                </div>

				    <!-- <a class="pull-right btn btn-primary btn-xs" style="margin-bottom:10px;" href="<?php echo site_url('inventories/createxls')?>"><i class="fa fa-file-excel-o"></i> Export Data</a> -->
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript"><!--
    $(function () {
        $("#from").datepicker({
		    dateFormat: 'yy-mm-dd'
		});
        $("#to").datepicker({
		    dateFormat: 'yy-mm-dd'
		});
    });
--></script>
<?php echo get_footer(); ?>