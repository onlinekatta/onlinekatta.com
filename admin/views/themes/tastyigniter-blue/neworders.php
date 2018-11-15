<?php
    $this->template->setDocType('html5');
    $this->template->setMeta(array('name' => 'Content-type', 'content' => 'text/html; charset=utf-8', 'type' => 'equiv'));
    $this->template->setMeta(array('name' => 'X-UA-Compatible', 'content' => 'IE=edge', 'type' => 'equiv'));
    $this->template->setMeta(array('name' => 'viewport', 'content' => 'width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no', 'type' => 'name'));
    $this->template->setFavIcon('images/Smart-Resto-Logo.png');
    $this->template->setStyleTag('css/bootstrap.min.css', 'bootstrap-css', '10');
    $this->template->setStyleTag('css/font-awesome.min.css', 'font-awesome-css', '11');
    $this->template->setStyleTag('css/metisMenu.min.css', 'metis-menu-css', '12');
    $this->template->setStyleTag('css/select2.css', 'select2-css', '13');
    $this->template->setStyleTag('css/select2-bootstrap.css', 'select2-bootstrap-css', '14');
    $this->template->setStyleTag('css/jquery.raty.css', 'jquery-raty-css', '15');
    $this->template->setStyleTag('css/fonts.css', 'fonts-css', '16');
    $this->template->setStyleTag('css/stylesheet.css', 'stylesheet-css', '1000000');
    $this->template->setStyleTag(assets_url('css/jquery-ui.css'), 'jquery-ui-css');
    $this->template->setStyleTag('css/themify-icons/themify-icons.css', 'themify-icons-css');

    $this->template->setScriptTag('js/jquery-1.11.2.min.js', 'jquery-js', '1');
    $this->template->setScriptTag('js/bootstrap.min.js', 'bootstrap-js', '10');
	$this->template->setScriptTag(assets_url('js/js.cookie.js'), 'js-cookie-js', '14');
	$this->template->setScriptTag('js/metisMenu.min.js', 'metis-menu-js', '11');
	$this->template->setScriptTag('js/select2.js', 'select-2-js', '12');
	$this->template->setScriptTag('js/jquery.raty.js', 'jquery-raty-js', '13');
	$this->template->setScriptTag('js/common.js', 'common-js');
	$this->template->setScriptTag(assets_url('js/printThis.js'), 'printThis-js');
	$this->template->setScriptTag(assets_url('js/notifications.js'), 'notifications-js');
	$this->template->setScriptTag(assets_url('js/jquery-ui.js'), 'jquery-ui-js');

	$img_screen		    = base_url('views/themes/tastyigniter-blue/images/screen.png');
	$smartresto_logo    = base_url('views/themes/tastyigniter-blue/images/Smart-Resto-Logo.png');
	$overlay_loading    = base_url('views/themes/tastyigniter-blue/images/ajax-loader.gif');
	$site_logo          = base_url('views/themes/tastyigniter-blue/images/smartresto-logo-text.png');
    $system_name 		= lang('smartresto_system_name');
    $site_name 		    = config_item('site_name');
    $site_url 			= rtrim(site_url(), '/').'/';
    $base_url 			= base_url();
    $assets_url 		= assets_url();
    $active_menu 		= ($this->uri->rsegment(1)) ? $this->uri->rsegment(1) : ADMINDIR;
    $message_unread 	= $this->user->unreadMessageTotal();
    $islogged 			= $this->user->islogged();
    $username 			= $this->user->getUsername();
	$staff_name 		= $this->user->getStaffName();
	$staff_email 		= $this->user->getStaffEmail();
	$staff_avatar 		= md5(strtolower(trim($staff_email)));
    $staff_group 		= $this->user->staffGroup();
    $staff_location		= $this->user->getLocationName();
    $staff_edit 		= site_url('staffs/edit?id='. $this->user->getStaffId());
    $logout 			= site_url('logout');

	$wrapper_class = '';
	if (!$this->user->islogged()) {
		$wrapper_class .= 'wrap-none';
	}

	if ($this->input->cookie('ti_sidebarToggleState') == 'hide') {
		$wrapper_class .= ' hide-sidebar';
	}
?>
<?php echo get_doctype(); ?>
<!DOCTYPE html>
<html>
<head>
	<?php echo get_metas(); ?>
	<?php echo get_favicon(); ?>
	<title><?php echo sprintf(lang('site_title'), get_title(), $site_name, $system_name); ?></title>
	<?php echo get_style_tags(); ?>
	<?php echo get_script_tags(); ?>
	<script type="text/javascript">
		var js_site_url = function(str) {
			var strTmp = "<?php echo $site_url; ?>" + str;
			return strTmp;
		};

		var js_assets_url = function(str) {
			var strTmp = "<?php echo $assets_url; ?>" + str;
			return strTmp;
		};

		var js_base_url = function(str) {
			var strTmp = "<?php echo $base_url; ?>" + str;
			return strTmp;
		};

		var active_menu = '<?php echo $active_menu; ?>';
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('a[title], span[title], button[title]').tooltip({placement: 'bottom'});
			$('select.form-control').select2({minimumResultsForSearch: 10});

			$('.alert').alert();
			$('.dropdown-toggle').dropdown();

			$("#list-form td:contains('<?php echo lang('text_disabled'); ?>')").addClass('red');
		});
	</script>
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body>

	<div>
        <nav class="navbar navbar-default navigation-clean-button">
            <div class="container">
                <div class="navbar-header"><a class="navbar-brand" href="#"><img style="width:50px;" class="logo-image" alt="<?php echo $system_name; ?>" title="<?php echo $system_name; ?>" src="<?php echo $smartresto_logo; ?>"/></a>
                    <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                </div>
                <div class="collapse navbar-collapse" id="navcol-1">
                    <p class="navbar-text navbar-right actions">
                    	<a target="_blank" href="<?php echo $_screen; ?>" style="margin-right:50px;"><img style="width:20px;" src="<?php echo $img_screen; ?>"></a>
                    	<a href="#" style="margin-right:10px;">History</a>
                    	<a class="btn btn-default action-button" role="button" href="<?php echo $logout; ?>">Log Out</a>
                    </p>
                </div>
            </div>
        </nav>
    </div>

	<div class="container" id="container1">
		<div class="row">
		<?php if ($orders) { ?>
			<?php foreach ($orders as $order) { ?>
			<div class="col-xs-3 col-sm-3 col-md-3">
				<div class="panel panel-info">
			      	<div class="panel-heading">
			      		<div class="row">
							<div class="col-xs-9 col-sm-9">#<?php echo $order['order_id']; ?></div>
							<div class="col-xs-3 col-sm-3"><a href="<?php echo $order['edit']; ?>"><i class="fa fa-pencil"></i></a></div>
						</div>
			      	</div>
			      	<div class="panel-body">
			      		<div class="row">
			      			<div class="col-xs-8 col-sm-8 pull-right">
			      				<?php echo $order['order_time']; ?> - <?php echo $order['order_date']; ?>
			      			</div>
			      		</div>
			      		<div class="row">
			      			<div class="col-xs-12 col-sm-12"><a class="btn btn-primary" href="<?php echo $order['edit']; ?>">Details</a></div>
			      		</div>
			      	</div>
			    </div>
			</div>
			<?php } ?>
		<?php } else { ?>
			<div class="col-sm-12"><?php echo lang('text_empty'); ?></div>
		<?php } ?>
		</div>
	</div>

	<div class="container" id="container1" style="display:none;">
		<div class="row">
			<table border="0" class="table table-striped table-border">
					<thead>
						<tr>
							<th class="action"><input type="checkbox" onclick="$('input[name*=\'delete\']').prop('checked', this.checked);"></th>
							<th><a class="sort" href="<?php echo $sort_id; ?>"><?php echo lang('column_id'); ?><i class="fa fa-sort-<?php echo ($sort_by == 'order_id') ? $order_by_active : $order_by; ?>"></i></a></th>
							<th><a class="sort" href="<?php echo $sort_location; ?>"><?php echo lang('column_location'); ?><i class="fa fa-sort-<?php echo ($sort_by == 'location_name') ? $order_by_active : $order_by; ?>"></i></a></th>
							<th><a class="sort" href="<?php echo $sort_customer; ?>"><?php echo lang('column_customer_name'); ?><i class="fa fa-sort-<?php echo ($sort_by == 'first_name') ? $order_by_active : $order_by; ?>"></i></a></th>
							<th><a class="sort" href="<?php echo $sort_status; ?>"><?php echo lang('column_status'); ?><i class="fa fa-sort-<?php echo ($sort_by == 'status_name') ? $order_by_active : $order_by; ?>"></i></a></th>
							<th><a class="sort" href="<?php echo $sort_type; ?>"><?php echo lang('column_type'); ?><i class="fa fa-sort-<?php echo ($sort_by == 'order_type') ? $order_by_active : $order_by; ?>"></i></a></th>
							<th><a class="sort" href="<?php echo $sort_payment; ?>"><?php echo lang('column_payment'); ?><i class="fa fa-sort-<?php echo ($sort_by == 'payment') ? $order_by_active : $order_by; ?>"></i></a></th>
							<th><a class="sort" href="<?php echo $sort_total; ?>"><?php echo lang('column_total'); ?><i class="fa fa-sort-<?php echo ($sort_by == 'order_total') ? $order_by_active : $order_by; ?>"></i></a></th>
							<th><?php echo lang('column_table'); ?></th>
							<th class="text-center"><a class="sort" href="<?php echo $sort_date; ?>"><?php echo lang('column_time_date'); ?><i class="fa fa-sort-<?php echo ($sort_by == 'date_added') ? $order_by_active : $order_by; ?>"></i></a></th>
						</tr>
					</thead>
					<tbody>
						<?php if ($orders) { ?>
						<?php foreach ($orders as $order) { ?>
						<tr>
							<td class="action"><input type="checkbox" value="<?php echo $order['order_id']; ?>" name="delete[]" />&nbsp;&nbsp;&nbsp;
								<a class="btn btn-edit" title="<?php echo lang('text_edit'); ?>" href="<?php echo $order['edit']; ?>"><i class="fa fa-pencil"></i></a></td>
							<td><?php echo $order['order_id']; ?></td>
							<td><?php echo $order['location_name']; ?></td>
							<td><?php echo $order['first_name'] .' '. $order['last_name']; ?></td>
                            <td><span class="label label-default" style="background-color: <?php echo $order['status_color']; ?>;"><?php echo $order['order_status']; ?></span></td>
							<td><?php echo $order['order_type']; ?></td>
							<td><?php echo $order['payment']; ?></td>
							<td><?php echo $order['order_total']; ?></td>
							<td><?php echo $order['table_name']; ?></td>
							<td class="text-center"><?php echo $order['order_time']; ?> - <?php echo $order['order_date']; ?></td>
						</tr>
						<?php } ?>
						<?php } else { ?>
						<tr>
							<td colspan="10"><?php echo lang('text_empty'); ?></td>
						</tr>
						<?php } ?>
					</tbody>
				</table>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function(){

		});
	</script>
</body>
</html>