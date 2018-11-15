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
<body style="padding-top:30px;">

	<div class="container" id="container1">
		<div class="row" id="orderSec"></div>
	</div>

	<script type="text/javascript">
		loadOrders();
		$(document).ready(function(){
			$(document).keyup(function(e) {
			     if (e.keyCode == 27) { // escape key maps to keycode `27`
			        // alert('ok');
			       window.location.href=js_site_url('NewOrders');
			    }
			});
		});
		$(document).ready(function(){
               	
        });
        function loadOrders(){
        	$("#orderSec").html('');
                $.ajax({
                    type: 'POST',
                    data: {},
                    url: js_site_url('NewOrders/getorders'),
                    success: function (json) {
                        // if(json === ''){ 
                            if (json.status) {
                                if (json.data.length > 0) {
                                    for (var rec=0; rec<json.data.length; rec++){ 
                                    	var order_id = json.data[rec].order_id;
                                        var orders = '<div id="orderSec_'+json.data[rec].order_id+'" class="col-sm-4">'+
                                        '<div class="panel panel-info">'+
									      	'<div class="panel-heading">'+
									      		'<div class="row">'+
									      		'<div class="col-sm-3">#'+json.data[rec].order_id+'</div>'+
									      		'</div>'+
									      	'</div>'+
									      	'<div class="panel-body">'+
									      		'<div class="row">'+
									      			'<div class="col-sm-12">'+
									      			'<table class="table table-condensed table-hover table-striped" id="orderSecBody_'+json.data[rec].order_id+'">'+
									      			'<thead>'+
									      			'<tr>'+
														'<th></th>'+
														'<th width="30%">Name</th>'+
														'<th class="text-left">Price</th>'+
														'<th class="text-right">Total</th>'+
														'<th class="text-right">Note</th>'+
														'<th class="text-right">Status</th>'+
													'</tr>'+
									      			'</thead>'+
									      			'<tbody>';
									      			loadMenus(order_id);
										        	orders += '</tbody>'+
									      			'</table>'+
									      			'</div>'+
									      		'</div>'+
									      	'</div>'+
                                        '</div>';
                                        $("#orderSec").append(orders);
                                    }
                                }else{
                                    alert('error');
                                }
                            } else{
                                var orders = '<div class="col-sm-12">'+
                                        '<div class="panel panel-danger">'+
									      	'<div class="panel-heading">'+
									      		'<div class="row">'+
									      		'<div class="col-sm-3">#result:</div>'+
									      		'</div>'+
									      	'</div>'+
									      	'<div class="panel-body">'+
									      		'<div class="row">'+
									      		'<div class="col-sm-3">#No order received.</div>'+
									      		'</div>'+
									      	'</div>'+
                                        '</div>';
                                $("#orderSec").html(orders);
                            }
                        // }else{
                        //     $("#eduSec").html('No data inserted');
                        // }
                    }
                });
        }

        function loadMenus(order_id){
        	$("#orderSecBody_"+order_id+" tbody").html('');
        	$.ajax({
				type: 'POST',
				data: {'order_id':order_id},
				url: js_site_url('neworders/getmenus'),
				success: function (row) {
					if (row.status) {
						if (row.data.length > 0) {
							for (var rec=0; rec<row.data.length; rec++){ 
								var tbody = '<tr>'+
									'<th>'+row.data[rec].quantity+'x</th>'+
									'<th width="30%">'+row.data[rec].name+'</th>'+
									'<th class="text-left">'+parseFloat(row.data[rec].price).toFixed(2)+'</th>'+
									'<th class="text-right">'+parseFloat(row.data[rec].subtotal).toFixed(2)+'</th>'+
									'<th class="text-right">Note</th>'+
									'</tr>';
								$("#orderSecBody_"+row.data[rec].order_id+" tbody").append(tbody);
							}
						}
					}
				}
			});
        }

        nextAnim($('.a'));

        function nextAnim(elems)
		{
			// if we have element, animate it
			elems.eq(0).animate({'left': 50}, function()
			{
				nextAnim(elems.slice(1));  // slice off the first element
			});
		}
	</script>
</body>
</html>