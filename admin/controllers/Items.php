<?php if ( ! defined('BASEPATH')) exit('No direct access allowed');

class Items extends Admin_Controller {

	public function __construct() {
		parent::__construct(); //  calls the constructor

		$this->user->restrict('Admin.Menus');

		
		$this->load->model('Menus_model'); // load the menus model
		$this->load->model('Items_model'); // load the menus model
		$this->load->model('Locations_model'); // load the Locations model
		$this->load->model('ItemCategories_model');
		$this->load->model('ItemsMenuAssoc_model');
		//$this->load->model('Menu_options_model'); // load the menu options model
		$this->load->model('Mealtimes_model'); // load the mealtimes model

		$this->load->library('pagination');
		$this->load->library('currency'); // load the currency library

		$this->lang->load('items');
	}

	public function index() {

		$url = '?';
		$filter = array();
		if ($this->input->get('page')) {
			$filter['page'] = (int) $this->input->get('page');
		} else {
			$filter['page'] = '';
		}

		if ($this->config->item('page_limit')) {
			$filter['limit'] = $this->config->item('page_limit');
		}

		if ($this->input->get('filter_search')) {
			$filter['filter_search'] = $data['filter_search'] = $this->input->get('filter_search');
			$url .= 'filter_search=' . $filter['filter_search'] . '&';
		} else {
			$data['filter_search'] = '';
		}

		if ($this->input->get('filter_category')) {
			$filter['filter_category'] = $data['category_id'] = (int) $this->input->get('filter_category');
			$url .= 'filter_category=' . $filter['filter_category'] . '&';
		} else {
			$data['category_id'] = '';
		}

		if (is_numeric($this->input->get('filter_status'))) {
			$filter['filter_status'] = $data['filter_status'] = $this->input->get('filter_status');
			$url .= 'filter_status=' . $filter['filter_status'] . '&';
		} else {
			$filter['filter_status'] = $data['filter_status'] = '';
		}

		if ($this->input->get('sort_by')) {
			$filter['sort_by'] = $data['sort_by'] = $this->input->get('sort_by');
		} else {
			$filter['sort_by'] = $data['sort_by'] = 'items.item_id';
		}

		if ($this->input->get('order_by')) {
			$filter['order_by'] = $data['order_by'] = $this->input->get('order_by');
			$data['order_by_active'] = $this->input->get('order_by') . ' active';
		} else {
			$filter['order_by'] = $data['order_by'] = 'ASC';
			$data['order_by_active'] = 'ASC active';
		}

		$this->template->setTitle($this->lang->line('text_heading'));
		$this->template->setHeading($this->lang->line('text_heading'));

		$this->template->setButton($this->lang->line('button_new'), array('class' => 'btn btn-primary', 'href' => page_url() . '/edit'));
		$this->template->setButton($this->lang->line('button_delete'), array('class' => 'btn btn-danger', 'onclick' => 'confirmDelete();'));;

		if ($this->input->post('delete') AND $this->_deleteItem() === TRUE) {
			redirect('items');
		}

		$order_by = (isset($filter['order_by']) AND $filter['order_by'] == 'ASC') ? 'DESC' : 'ASC';
		$data['sort_name'] = site_url('items' . $url . 'sort_by=item_name&order_by=' . $order_by);
		$data['sort_location'] = site_url('items' . $url . 'sort_by=item_location&order_by=' . $order_by);
		$data['sort_price'] = site_url('items' . $url . 'sort_by=item_price&order_by=' . $order_by);
		$data['sort_stock'] = site_url('items' . $url . 'sort_by=stock_qty&order_by=' . $order_by);
		$data['sort_id'] = site_url('items' . $url . 'sort_by=items.menu_id&order_by=' . $order_by);

		$this->load->model('Image_tool_model');

		$data['items'] = array();
		$results = $this->Items_model->getList($filter);

		foreach ($results as $result) {

			$price = $result['item_price'];

			$data['items'][] = array(
				'item_id'          => $result['item_id'],
				'item_name'        => $result['item_name'],
				'item_description' => $result['item_description'],
				'category_name'    => $result['name'],
				'location_name'    => $result['location_name'],
				'item_price'       => $this->currency->format($price),
				'item_photo'       => $result['item_photo'],
				'stock_qty'        => $result['stock_qty'],
				'added_date'        => $result['added_date'],
				'item_status'      => ($result['item_status'] === '1') ? $this->lang->line('text_enabled') : $this->lang->line('text_disabled'),
				'edit'             => site_url('items/edit?id=' . $result['item_id']),
			);
		}

		
		//load category data into array
		$data['locations'] = array();
		$data['locations'] = $this->Locations_model->getLocations();
		foreach ($locations as $location) {
			$data['locations'][] = array(
				'item_location'   => $category['location_id'],
				'location_name' => $category['location_name'],
			);
		}

		//load category data into array
		$data['categories'] = array();
		$categories = $this->ItemCategories_model->getCategories();
		foreach ($categories as $category) {
			$data['categories'][] = array(
				'item_category_id'   => $category['item_category_id'],
				'category_name' => $category['name'],
			);
		}

		if ($this->input->get('sort_by') AND $this->input->get('order_by')) {
			$url .= 'sort_by=' . $filter['sort_by'] . '&';
			$url .= 'order_by=' . $filter['order_by'] . '&';
		}

		$config['base_url'] = site_url('items' . $url);
		$config['total_rows'] = $this->Items_model->getCount($filter);
		$config['per_page'] = $filter['limit'];

		$this->pagination->initialize($config);

		$data['pagination'] = array(
			'info'  => $this->pagination->create_infos(),
			'links' => $this->pagination->create_links(),
		);

		$this->template->render('items', $data);
	}

	public function edit() {

		$item_info = $this->Items_model->getItem((int) $this->input->get('id'));

		if ($item_info) {
			$item_id = $this->input->get('id');
			$data['_action'] = site_url('items/edit?id=' . $item_id);
		} else {
			$item_id = 0;
			$data['_action'] = site_url('items/edit');
		}


		$title = (isset($item_info['item_name'])) ? $item_info['item_name'] : $this->lang->line('text_new');
		$this->template->setTitle(sprintf($this->lang->line('text_edit_heading'), $title));
		$this->template->setHeading(sprintf($this->lang->line('text_edit_heading'), $title));

		$this->template->setButton($this->lang->line('button_save'), array('class' => 'btn btn-primary', 'onclick' => '$(\'#edit-form\').submit();'));
		$this->template->setButton($this->lang->line('button_save_close'), array('class' => 'btn btn-default', 'onclick' => 'saveClose();'));
		$this->template->setButton($this->lang->line('button_icon_back'), array('class' => 'btn btn-default', 'href' => site_url('items')));

		$this->template->setStyleTag(assets_url('js/datepicker/datepicker.css'), 'datepicker-css');
		$this->template->setScriptTag(assets_url("js/datepicker/bootstrap-datepicker.js"), 'bootstrap-datepicker-js');

		if ($this->input->post() AND $item_id = $this->_saveItem()) {
			if ($this->input->post('save_close') === '1') {
				redirect('items');
			}

			redirect('items/edit?id=' . $item_id);
		}

		$this->load->model('Image_tool_model');
		if ($this->input->post('item_photo')) {
			$data['item_image'] = $this->input->post('item_photo');
			$data['image_name'] = basename($this->input->post('item_photo'));
			$data['item_image_url'] = $this->Image_tool_model->resize($this->input->post('item_photo'));
		} else if ( ! empty($item_info['item_photo'])) {
			$data['item_image'] = $item_info['item_photo'];
			$data['image_name'] = basename($item_info['item_photo']);
			$data['item_image_url'] = $this->Image_tool_model->resize($item_info['item_photo']);
		} else {
			$data['item_image'] = '';
			$data['image_name'] = '';
			$data['item_image_url'] = $this->Image_tool_model->resize('data/no_photo.png');
		}



		$data['item_id'] = $item_info['item_id'];
		$data['item_name'] = $item_info['item_name'];
		$data['item_description'] = $item_info['item_description'];
		$data['item_location'] = $item_info['item_location'];
		$data['item_price'] = $item_info['item_price'];
		$data['item_category'] = $item_info['item_category_id'];
		$data['stock_qty'] = $item_info['stock_qty'];
		$data['added_date'] = $item_info['added_date'];
		$data['minimum_qty'] = (isset($item_info['minimum_qty'])) ? $item_info['minimum_qty'] : '1';
		$data['subtract_stock'] = $item_info['subtract_stock'];
		$data['item_status'] = isset($item_info['item_status']) ? $item_info['item_status'] : '1';
		$data['mealtime_id'] = $item_info['mealtime_id'];
		$data['measuring_unit'] = $item_info['measuring_unit'];
		$data['item_priority'] = $item_info['item_priority'];
		$data['no_photo'] = $this->Image_tool_model->resize('data/no_photo.png');

		$data['categories'] = array();
		$results = $this->ItemCategories_model->getCategories();
		foreach ($results as $result) {
			$data['categories'][] = array(
				'item_category_id'   => $result['item_category_id'],
				'category_name' => $result['name'],
			);
		}

		//load category data into array
		$data['locations'] = array();
		$data['locations'] = $this->Locations_model->getLocations();
		foreach ($locations as $location) {
			$data['locations'][] = array(
				'item_location'   => $location['location_id'],
				'location_name' => $location['location_name'],
			);
		}

		$data['mealtimes'] = array();
		$results = $this->Mealtimes_model->getMealtimes();
		foreach ($results as $result) {
			$start_time = mdate('%H:%i', strtotime($result['start_time']));
			$end_time = mdate('%H:%i', strtotime($result['end_time']));

			$data['mealtimes'][] = array(
				'mealtime_id'   => $result['mealtime_id'],
				'mealtime_name' => $result['mealtime_name'],
				'label' => "({$start_time} - {$end_time})",
			);
		}

		$data['menu_assoc'] = array();
		$results = $this->ItemsMenuAssoc_model->getMenuAssoc($item_id);
		
		foreach ($results as $result) {
			$data['menu_assoc'][] = array(
				'menu_id'   => $result['menu_id'],
				'menu_name'   => $result['menu_name'],
				'requiredQ' => $result['required_quantity'],
				'substract' => $result['substract_option'],
			);
		}

		$this->template->render('items_edit', $data);
	}

	public function updateStock(){
		$item_id = $this->input->post('item_id');

        $qty_array = $this->input->post('qty');
        $price_array = $this->input->post('price');
        // $location_array = $this->input->post('location');

        foreach($qty_array as $k=> $qty){
            $data = array(
                'item_qty' => $qty,
                'item_price' => $price_array[$k]
                // 'item_location' => $location_array[$k]
            );
            $this->Items_model->addStockUpdate($item_id, $data);
        }

        redirect('items');
	}

	public function getItemName() {
		$json = array();

		if ($this->input->post('id')) {
			$item_id = $this->input->post('id');

			$results = $this->Items_model->getItemName($item_id);
			if ($results) {
				$json['name'] = $results['item_name'];
				$json['location'] = $results['location_name'];
			}
			
		}
		$this->output->set_output(json_encode($json));
	}

	public function checkItem() {
		$json = array();

		if ($this->input->post('item_name')) {
			$item_name = ucfirst($this->input->post('item_name'));
			$location_id = $this->input->post('location_id');

			$results = $this->Items_model->getItemLocationName($item_name, $location_id);
			if ($results) {
				$json['name'] = $results['item_name'];
			}
			
		}
		$this->output->set_output(json_encode($json));
	}

	public function autocomplete() {
		$json = array();
		
		// $item_id = $this->input->get('item_id');

		// $results = $this->Items_model->getItemName($item_id);
		$location_id = $this->input->get('location_id');

		if ($this->input->get('term')) {
			$filter = array(
				'menu_name' => $this->input->get('term'),
				'location_id' => $location_id,
			);

			$results = $this->Items_model->getAutoComplete($filter);
			if ($results) {
				foreach ($results as $result) {
					$json['results'][] = array(
						'id'   => $result['menu_id'],
						'text' => utf8_encode($result['menu_name']),
						'stock_qty' => utf8_encode($result['stock_qty']),
						'substract_stock' => utf8_encode($result['substract_stock']),
					);
				}
			} else {
				$json['results'] = array('id' => '0', 'text' => $this->lang->line('text_no_match'));
			}
		}

		$this->output->set_output(json_encode($json));
	}

	private function _saveItem() {
		if ($this->validateForm() === TRUE) {
			$save_type = ( ! is_numeric($this->input->get('id'))) ? $this->lang->line('text_added') : $this->lang->line('text_updated');

			if ($item_id = $this->Items_model->saveItem($this->input->get('id'), $this->input->post())) {
				log_activity($this->user->getStaffId(), $save_type, 'inventory', get_activity_message('activity_custom',
					array('{staff}', '{action}', '{context}', '{link}', '{item}'),
					array($this->user->getStaffName(), $save_type, 'menu item', site_url('items/edit?id=' . $item_id), $this->input->post('item_name'))
				));

				$this->alert->set('success', sprintf($this->lang->line('alert_success'), 'Item ' . $save_type));
			} else {
				$this->alert->set('warning', sprintf($this->lang->line('alert_error_nothing'), $save_type));
			}

			return $item_id;
		}
	}

	public function qtyItemCheck($item_id, $timer){
		// $this->Menus_model->deleteStoredProcedure($item_id);
		while($timer > 0):
			$massoc = $this->Items_model->getItemAssoc($item_id);
			$error = true;
			foreach ($massoc as $ma) {
				if($ma['required_quantity'] <= $ma['stock_qty']){
					$error = false;
					$rest = $ma['stock_qty'] - $ma['required_quantity'];
					$spData = $this->Menus_model->getStoredProcedure($ma['item_id']);
					if(empty($spData)){
						$type = "Insert";
						$this->insertRest($ma['item_id'], $rest, $type);
					}else{
						$new = $spData['quantity'];
						$rest = $new - $ma['required_quantity'];
						$type = "Update";
						$this->insertRest($ma['item_id'], $rest, $type);
					}
				}else{
					$error = true;
				}

				if($error){
					break;
				}else{
					$this->Menus_model->updateMenuQty($ma['menu_id']);
				}
			}
			$timer--;
		endwhile;
	}

	public function qtyMenuCheck(){
		$menusitems = $this->Menus_model->getAllMenus();
		foreach ($menusitems as $mi) {
			$menu_id = $mi['menu_id'];
			$massoc = $this->ItemsMenuAssoc_model->getItemAssoc($menu_id);
			// print_r($massoc);
			$error = true;
			foreach ($massoc as $ma) {
				if($ma['required_quantity'] <= $ma['stock_qty']){
					$error = false;
					$rest = $ma['stock_qty'] - $ma['required_quantity'];
					$spData = $this->Menus_model->getStoredProcedure($ma['item_id']);
					if(empty($spData)){
						$type = "Insert";
						// echo "Insert: ".$rest;
						$this->insertRest($ma['item_id'], $rest, $type);
					}else{
						$new = $spData['quantity'];
						$rest = $new - $ma['required_quantity'];
						// echo "Update: ".$rest;
						$type = "Update";
						$this->insertRest($ma['item_id'], $rest, $type);
					}
				}else{
					$error = true;
				}

				if($error){
					break;
				}else{
					$$this->Menus_model->updateMenuQty($ma['menu_id']);
				}
			}
		}
	}

	public function insertRest($item, $rest, $type)
	{
		$query = $this->db->query("call settings_qty('".$item."','".$rest."','".$type."')");
	}

	private function _deleteItem() {		
		if ($this->input->post('delete')) {
			$deleted_rows = $this->Items_model->deleteItem($this->input->post('delete'));

			if ($deleted_rows > 0) {
				$prefix = ($deleted_rows > 1) ? '[' . $deleted_rows . '] Items' : 'Item';
				$this->alert->set('success', sprintf($this->lang->line('alert_success'), $prefix . ' ' . $this->lang->line('text_deleted')));
			} else {
				$this->alert->set('warning', sprintf($this->lang->line('alert_error_nothing'), $this->lang->line('text_deleted')));
			}

			return TRUE;
		}
	}

	private function validateForm() {
		$this->form_validation->set_rules('item_name', 'lang:label_name', 'xss_clean|trim|required|min_length[2]|max_length[255]');
		$this->form_validation->set_rules('item_description', 'lang:label_description', 'xss_clean|trim|min_length[2]|max_length[1028]');
		$this->form_validation->set_rules('item_location', 'lang:label_location', 'xss_clean|trim|required|integer');
		$this->form_validation->set_rules('item_price', 'lang:label_price', 'xss_clean|trim|required|numeric');
		$this->form_validation->set_rules('item_category', 'lang:label_category', 'xss_clean|trim|required|integer');
		$this->form_validation->set_rules('item_photo', 'lang:label_photo', 'xss_clean|trim');
		$this->form_validation->set_rules('stock_qty', 'lang:label_stock_qty', 'xss_clean|trim|integer');
		$this->form_validation->set_rules('minimum_qty', 'lang:label_minimum_qty', 'xss_clean|trim|required|integer');
		$this->form_validation->set_rules('subtract_stock', 'lang:label_subtract_stock', 'xss_clean|trim|required|integer');
		$this->form_validation->set_rules('item_status', 'lang:label_status', 'xss_clean|trim|required|integer');
		$this->form_validation->set_rules('mealtime_id', 'lang:label_mealtime', 'xss_clean|trim|required|integer');
		$this->form_validation->set_rules('item_priority', 'lang:label_item_priority', 'xss_clean|trim|integer');

		if ($this->input->post('menu_options')) {
			foreach ($this->input->post('menu_options') as $key => $value) {
				$this->form_validation->set_rules('menu_options[' . $key . '][menu_option_id]', 'lang:label_option', 'xss_clean|trim|integer');
				$this->form_validation->set_rules('menu_options[' . $key . '][option_id]', 'lang:label_option_id', 'xss_clean|trim|required|integer');
				$this->form_validation->set_rules('menu_options[' . $key . '][option_name]', 'lang:label_option_name', 'xss_clean|trim|required');
				$this->form_validation->set_rules('menu_options[' . $key . '][display_type]', 'lang:label_option_display_type', 'xss_clean|trim|required');
				$this->form_validation->set_rules('menu_options[' . $key . '][default_value_id]', 'lang:label_default_value_id', 'xss_clean|trim|integer');
				$this->form_validation->set_rules('menu_options[' . $key . '][priority]', 'lang:label_option_id', 'xss_clean|trim|required|integer');
				$this->form_validation->set_rules('menu_options[' . $key . '][required]', 'lang:label_option_required', 'xss_clean|trim|required|integer');

				foreach ($value['option_values'] as $option => $option_value) {
					$this->form_validation->set_rules('menu_options[' . $key . '][option_values][' . $option . '][option_value_id]', 'lang:label_option_value', 'xss_clean|trim|required|integer');
					$this->form_validation->set_rules('menu_options[' . $key . '][option_values][' . $option . '][price]', 'lang:label_option_price', 'xss_clean|trim|numeric');
					$this->form_validation->set_rules('menu_options[' . $key . '][option_values][' . $option . '][quantity]', 'lang:label_option_qty', 'xss_clean|trim|numeric');
					$this->form_validation->set_rules('menu_options[' . $key . '][option_values][' . $option . '][subtract_stock]', 'lang:label_option_subtract_stock', 'xss_clean|trim|numeric');
					$this->form_validation->set_rules('menu_options[' . $key . '][option_values][' . $option . '][menu_option_value_id]', 'lang:label_option_value_id', 'xss_clean|trim|numeric');
				}
			}
		}

		if ($this->input->post('special_status') === '1') {
			$this->form_validation->set_rules('start_date', 'lang:label_start_date', 'xss_clean|trim|required');
			$this->form_validation->set_rules('end_date', 'lang:label_end_date', 'xss_clean|trim|required');
			$this->form_validation->set_rules('special_price', 'lang:label_special_price', 'xss_clean|trim|required|numeric');
		}

		if ($this->form_validation->run() === TRUE) {
			return TRUE;
		} else {
			return FALSE;
		}
	}
}

/* End of file menus.php */
/* Location: ./admin/controllers/menus.php */