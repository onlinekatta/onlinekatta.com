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
                    	<a href="<?php echo $_screen; ?>" style="margin-right:50px;"><img style="width:20px;" src="<?php echo $img_screen; ?>"></a>
                    	<a href="#" style="margin-right:10px;">History</a>
                    	<a class="btn btn-default action-button" role="button" href="<?php echo $logout; ?>">Log Out</a>
                    </p>
                </div>
            </div>
        </nav>
    </div>

	<div class="container" id="container1">
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4 <?=($ordertotal==2)?'col-lg-6':($ordertotal==3)?'col-lg-4':($ordertotal>=8)?'col-lg-4':'col-lg-12';?>">
				<div class="panel panel-warning">
				    <div class="panel-heading">
					    <div class="row">
							<div class="col-sm-3">
								<label for="" class="control-label"><?php echo lang('label_order_id'); ?></label>
								<div class="">
									#<?php echo $order_id; ?>
									<input type="hidden" name="order_id" value="<?php echo $order_id; ?>" id="order_id">
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
				    </div>

				    <div class="panel-body">
						<div class="col-sm-12">
							<table height="auto" class="table table-condensed table-border">
								<thead>
									<tr>
										<th></th>
										<th width="30%"><?php echo lang('column_name_option'); ?></th>
										<th class="text-left"><?php echo lang('column_price'); ?></th>
										<th class="text-right"><?php echo lang('column_total'); ?></th>
										<th class="text-right">Note</th>
									</tr>
								</thead>
								<tbody>
									<?php foreach ($cart_items as $cart_item) { ?>
									<tr id="<?php echo $cart_item['id']; ?>">
										<td>
											<?php echo $cart_item['qty']; ?>x
											<input type="hidden" name="menu_order" id="menu_order_<?php echo $cart_item['id']; ?>" value="<?php echo $cart_item['id']; ?>">
										</td>
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
										<td><?=($cart_item['comment'] == '')?'--':$cart_item['comment'];?></td>
										<td class="text-right">
											<select class="menu_order_status">
												<option value="1"<?=($cart_item['menu_status'] == 1)?' selected':'';?> >received</option>
												<option value="2"<?=($cart_item['menu_status'] == 2)?' selected':'';?>>under preparation</option>
												<option value="3"<?=($cart_item['menu_status'] == 3)?' selected':'';?>>packed</option>
												<option value="4"<?=($cart_item['menu_status'] == 4)?' selected':'';?>>ready</option>
											</select>
										</td>
									</tr>
									<?php } ?>
									<?php $total_count = 1; ?>
									<?php foreach ($totals as $total) { ?>
										<tr>
											<td class="<?php echo ($total_count === 1) ? 'thick' : 'no'; ?>-line" width="1"></td>
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
						<div class="row">
							<div class="col-sm-8">
								<a href="<?php echo $_neworders; ?>" class="btn btn-success">Return</a>
							</div>
						</div>
					</div>
						
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$(document).ready(function(){
			$(".menu_order_status").change(function(){
				var id = $(this).parent().parent().attr('id');
				var menu_status = $(this).val();
				if(menu_status == '4'){
					$(this).parent().parent().attr('class','bg-success');
				}else{
					$(this).parent().parent().attr('class','bg-warning');
				}
				var order_id = $('#order_id').val();
				$.ajax({
					url: js_site_url('neworders/edit_menu_order'),
					data:'menu_id='+id+'&order_id='+order_id+'&menu_status='+menu_status,
					method:'POST',
					success: function() {
						// 
					}
				});
			});
		});
	</script>
</body>
</html>