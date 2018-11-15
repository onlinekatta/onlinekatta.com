<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Items_model extends TI_Model {

	public function getCount($filter = array()) {
		if (APPDIR === ADMINDIR) {
			if ( ! empty($filter['filter_search'])) {
				$this->db->like('item_name', $filter['filter_search']);
				$this->db->or_like('item_price', $filter['filter_search']);
				$this->db->or_like('stock_qty', $filter['filter_search']);
			}

			if (is_numeric($filter['filter_status'])) {
				$this->db->where('item_status', $filter['filter_status']);
			}
		}

		if ( ! empty($filter['filter_category'])) {
			$this->db->where('item_category_id', $filter['filter_category']);
		}

		$this->db->from('items');

		return $this->db->count_all_results();
	}

	public function getList($filter = array()) {
		if ( ! empty($filter['page']) AND $filter['page'] !== 0) {
			$filter['page'] = ($filter['page'] - 1) * $filter['limit'];
		}

		if ($this->db->limit($filter['limit'], $filter['page'])) {
			if (APPDIR === ADMINDIR) {
				$this->db->select('*, items.item_id');
				//$this->db->select('IF(start_date <= CURRENT_DATE(), IF(end_date >= CURRENT_DATE(), "1", "0"), "0") AS is_special', FALSE);
			} else {
				$this->db->select('items.item_id, item_name, item_location, locations.location_name, item_description, item_photo, item_price, minimum_qty, items.item_category_id, item_priority, item_categories.name AS category_name
					items.mealtime_id, mealtimes.mealtime_name, mealtimes.start_time, mealtimes.end_time, mealtime_status');
				//$this->db->select('IF(start_date <= CURRENT_DATE(), IF(end_date >= CURRENT_DATE(), "1", "0"), "0") AS is_special', FALSE);
				$this->db->select('IF(start_time <= CURRENT_TIME(), IF(end_time >= CURRENT_TIME(), "1", "0"), "0") AS is_mealtime', FALSE);
			}

			$this->db->join('locations', 'locations.location_id = items.item_location');
			$this->db->join('item_categories', 'item_categories.item_category_id = items.item_category_id', 'left');
			//$this->db->join('menus_specials', 'menus_specials.menu_id = menus.menu_id', 'left');
			$this->db->join('mealtimes', 'mealtimes.mealtime_id = items.mealtime_id', 'left');

			if ( ! empty($filter['sort_by']) AND ! empty($filter['order_by'])) {
				$this->db->order_by($filter['sort_by'], $filter['order_by']);
			}

			if ( ! empty($filter['filter_search'])) {
				$this->db->like('item_name', $filter['filter_search']);
				$this->db->or_like('item_price', $filter['filter_search']);
				$this->db->or_like('stock_qty', $filter['filter_search']);
			}

			if ( ! empty($filter['filter_category'])) {
				$this->db->where('items.item_category_id', $filter['filter_category']);
			}

			if (is_numeric($filter['filter_status'])) {
				$this->db->where('item_status', $filter['filter_status']);
			}

			$query = $this->db->get('items');
			//echo $this->db->last_query();
			$result = array();



			if ($query->num_rows() > 0) {
				$result = $query->result_array();
			}

			if (APPDIR === ADMINDIR) {
				return $result;
			}

			$this->load->model('Image_tool_model');

			$results = array();

			$show_menu_images = (is_numeric($this->config->item('show_menu_images'))) ? $this->config->item('show_menu_images') : '';
			$menu_images_h = (is_numeric($this->config->item('menu_images_h'))) ? $this->config->item('menu_images_h') : '50';
			$menu_images_w = (is_numeric($this->config->item('menu_images_w'))) ? $this->config->item('menu_images_w') : '50';

			foreach ($result as $row) {                                                            // loop through menus array
				$menu_photo_src = '';
				if ($show_menu_images === '1') {
					if ( ! empty($row['item_photo'])) {
						$menu_photo_src = $this->Image_tool_model->resize($row['item_photo'], $menu_images_w, $menu_images_h);
					}
				}

				$start_date = $end_date = $end_days = '';
				$price = $row['item_price'];				
				$results[$row['item_category_id']][] = array(                                                            // create array of menu data to be sent to view
					'item_id'          => $row['item_id'],
					'item_name'        => (strlen($row['item_name']) > 80) ? strtolower(substr($row['item_name'], 0, 80)) . '...' : strtolower($row['item_name']),
					'item_description' => (strlen($row['item_description']) > 120) ? substr($row['item_description'], 0, 120) . '...' : $row['item_description'],
					'location_name'    => $row['location_name'],
					'location_id'    => $row['location_id'],
					'category_name'    => $row['category_name'],
					'category_id'      => $row['item_category_id'],
					'minimum_qty'      => ! empty($row['minimum_qty']) ? $row['minimum_qty'] : '1',
					'item_priority'    => $row['item_priority'],
					'mealtime_name'    => $row['mealtime_name'],
					
					'is_mealtime'      => $row['is_mealtime'],
					'mealtime_status'  => (!empty($row['mealtime_id']) AND !empty($row['mealtime_status'])) ? '1' : '0',
					
					
					'item_price'       => $this->currency->format($price),        //add currency symbol and format price to two decimal places
					'item_photo'       => $item_photo_src,
				);
			}
			return $results;
		}
	}

	public function addStockUpdate($item_id, $data = array()) {
        if (is_array($data) AND is_numeric($item_id)) {

            $this->db->set('item_id', $item_id);
            $this->db->set('item_qty', $data['item_qty']);
            $this->db->set('item_price', $data['item_price']);
            $this->db->set('updated_at', mdate('%Y-%m-%d %H:%i:%s', time()));

            if ($this->db->insert('items_stock_update')) {
            	$update = $this->increaseStock($item_id, $data['item_qty']);
            	$massoc = $this->getItemAssoc($item_id);
				foreach ($massoc as $ma) {
					$menu_id = $ma['menu_id'];
					$qty = $this->getCountItems($menu_id);

					$this->db->set('stock_qty', $qty);
					$this->db->where('menu_id', (int) $menu_id);
					$query = $this->db->update('menus');
					
				}
                return $this->db->insert_id();
            }
        }
    }

	public function getItems() {
		$this->db->from('items');

		$query = $this->db->get();
		$result = array();

		if ($query->num_rows() > 0) {
			$result = $query->result_array();
		}

		return $result;
	}

	public function getItemsStock($filter = array()) {

		if ( ! empty($filter['page']) AND $filter['page'] !== 0) {
			$filter['page'] = ($filter['page'] - 1) * $filter['limit'];
		}

		$this->db->select('items.item_name, locations.location_name, items_stock_update.item_qty, items_stock_update.item_price, items_stock_update.updated_at');
		$this->db->from('items_stock_update');
		$this->db->join('items', 'items.item_id=items_stock_update.item_id');
		$this->db->join('locations', 'locations.location_id=items.item_location');

		if (isset($filter['from']) AND ! empty($filter['from'])) {
			$date = new DateTime($filter['from']);
			$this->db->where('updated_at >=', $date->format('Y-m-d H:i:s'));
		}

		if (isset($filter['to']) AND ! empty($filter['to'])) {
			$date = new DateTime($filter['to']);
			$this->db->where('updated_at <=', $date->format('Y-m-d H:i:s'));
		}

		if (isset($filter['location']) AND ! empty($filter['location'])) {
			$this->db->where('items.item_location =', $filter['location']);
		}

		$query = $this->db->get();
		$result = array();

		if ($query->num_rows() > 0) {
			$result = $query->result_array();
		}

		return $result;
	}

	public function getItemName($item_id) {
		$this->db->select('item_id, item_name, location_name, location_id');
		$this->db->from('items');
		$this->db->join('locations', 'locations.location_id=items.item_location');
		$this->db->where('item_id', $item_id);

		$query = $this->db->get();

		if ($query->num_rows() > 0) {
			return $query->row_array();
		}
	}

	public function getItemLocationName($item_name, $location_id) {
		$this->db->select('item_id, item_name');
		$this->db->from('items');
		$this->db->where('item_name', $item_name);
		$this->db->where('item_location', $location_id);

		$query = $this->db->get();

		if ($query->num_rows() > 0) {
			return $query->row_array();
		}
	}

	public function getItem($item_id) {
		$this->db->select('items.item_id, item_name, item_description, items.item_location, item_price, item_photo, items.item_category_id, stock_qty, measuring_unit, minimum_qty, subtract_stock, item_status, item_priority, item_categories.name, description, items.mealtime_id, mealtimes.mealtime_name, mealtimes.start_time, mealtimes.end_time, mealtime_status');
		$this->db->from('items');
		$this->db->join('item_categories', 'item_categories.item_category_id = items.item_category_id', 'left');
		$this->db->join('mealtimes', 'mealtimes.mealtime_id = items.mealtime_id', 'left');
		// $this->db->join('locations', 'locations.location_id = items.item_location', 'left');
		$this->db->where('items.item_id', $item_id);

		$query = $this->db->get();
		
		if ($query->num_rows() > 0) {
			return $query->row_array();
		}
	}

	public function getItemAssociation($menu_id) {
		$this->db->select('items_menu_association.item_id, items_menu_association.menu_id, items_menu_association.required_quantity, items.item_id, items.stock_qty');
		$this->db->from('items_menu_association');
		$this->db->join('items', 'items_menu_association.item_id = items.item_id', 'left');
		$this->db->where('items_menu_association.menu_id', $menu_id);

		$query = $this->db->get();
		//echo $this->db->last_query();		
		if ($query->num_rows() > 0) {
			return $query->result_array();
		}
	}

	public function getItemAssoc($item_id) {
		$this->db->select('items_menu_association.item_id, items_menu_association.menu_id, items_menu_association.required_quantity, items.item_id, items.stock_qty');
		$this->db->from('items_menu_association');
		$this->db->join('items', 'items_menu_association.item_id = items.item_id', 'left');
		$this->db->where('items_menu_association.item_id', $item_id);

		$query = $this->db->get();	
		if ($query->num_rows() > 0) {
			return $query->result_array();
		}
	}

	public function getItemQty($item_id) {
		$this->db->select('items.stock_qty');
		$this->db->from('items');
		$this->db->where('item_id', $item_id);

		$query = $this->db->get();	
		if ($query->num_rows() > 0) {
			return $query->row_array();
		}
	}

	public function getItemQtyAssoc($item_id) {
		$this->db->select('items_menu_association.item_id, items_menu_association.required_quantity');
		$this->db->from('items_menu_association');
		$this->db->join('items', 'items_menu_association.item_id = items.item_id', 'left');
		$this->db->where('items_menu_association.item_id', $item_id);

		$query = $this->db->get();
		//echo $this->db->last_query();		
		if ($query->num_rows() > 0) {
			return $query->result_array();
		}
	}

	public function updateStock($item_id, $quantity = 0) {
		if (is_numeric($item_id)) {
			$stock_qty = 'stock_qty - ' . $quantity;
			if($stock_qty < 0):
				$stock_qty = 0;
				$this->db->set('stock_qty', $stock_qty);
			else:
				$this->db->set('stock_qty', $stock_qty, FALSE);
			endif;
			$this->db->where('item_id', $item_id);
			$update = $this->db->update('items');

			if($update){
				$massoc = $this->getItemAssoc($item_id);
				foreach ($massoc as $ma) {
					$menu_id = $ma['menu_id'];
					$qty = $this->getCountItems($menu_id);
					$this->db->set('stock_qty', $qty);
					$this->db->where('menu_id', (int) $value['menu_id']);
					$query = $this->db->update('menus');
				}
			}

		}
	}

	public function getCountItems($menu_id){
		$massocs = $this->getItemAssociation($menu_id);
		$datatmp = array();
		$x = 0;
		foreach($massocs as $massoc):
			$result = $massoc['stock_qty'] / $massoc['required_quantity']; 
			$datatmp[$x] = (int)$result;
			$x++;
		endforeach;
		$result = min($datatmp);
		return $result;
	}

	public function increaseStock($item_id, $quantity = 0) {
		if (is_numeric($item_id)) {
			$stock_qty = 'stock_qty + ' . $quantity;
			$this->db->set('stock_qty', $stock_qty, FALSE);
			$this->db->where('item_id', $item_id);
			$update = $this->db->update('items');
		}
	}

	public function getAutoComplete($filter_data = array()) {
		if (is_array($filter_data) AND ! empty($filter_data)) {
			//selecting all records from the menu and categories tables.
			$this->db->from('menus');

			$this->db->where('menu_status', '1');
			$this->db->where('menu_location', $filter_data['location_id']);

			if ( ! empty($filter_data['menu_name'])) {
				$this->db->like('menu_name', $filter_data['menu_name']);
			}

			$query = $this->db->get();
			$result = array();

			if ($query->num_rows() > 0) {
				$result = $query->result_array();
			}

			return $result;
		}
	}

	public function saveItem($item_id, $save = array()) {
		if (empty($save) AND ! is_array($save)) return FALSE;

		if (isset($save['item_name'])) {
			$this->db->set('item_name', ucfirst($save['item_name']));
		}

		if (isset($save['item_description'])) {
			$this->db->set('item_description', $save['item_description']);
		}

		if (isset($save['item_location'])) {
			$this->db->set('item_location', $save['item_location']);
		}

		if (isset($save['item_price'])) {
			$this->db->set('item_price', $save['item_price']);
		}

		if (isset($save['item_category'])) {
			$this->db->set('item_category_id', $save['item_category']);
		}

		if (isset($save['item_photo'])) {
			$this->db->set('item_photo', $save['item_photo']);
		}

		if (isset($save['stock_qty']) AND $save['stock_qty'] > 0) {
			$this->db->set('stock_qty', $save['stock_qty']);
		} else {
			$this->db->set('stock_qty', '0');
		}

		if (isset($save['minimum_qty']) AND $save['minimum_qty'] > 0) {
			$this->db->set('minimum_qty', $save['minimum_qty']);
		} else {
			$this->db->set('minimum_qty', '1');
		}

		if (isset($save['subtract_stock']) AND $save['subtract_stock'] === '1') {
			$this->db->set('subtract_stock', $save['subtract_stock']);
		} else {
			$this->db->set('subtract_stock', '0');
		}

		if (isset($save['item_status']) AND $save['item_status'] === '1') {
			$this->db->set('item_status', $save['item_status']);
		} else {
			$this->db->set('item_status', '0');
		}

		if (isset($save['mealtime_id'])) {
			$this->db->set('mealtime_id', $save['mealtime_id']);
		} else {
			$this->db->set('mealtime_id', '0');
		}

		if (isset($save['item_priority'])) {
			$this->db->set('item_priority', $save['item_priority']);
		} else {
			$this->db->set('item_priority', '0');
		}

		if (isset($save['measuring_unit'])) {
			$this->db->set('measuring_unit', $save['measuring_unit']);
		} else {
			$this->db->set('measuring_unit', '');
		}


		if (is_numeric($item_id)) {
			$this->db->where('item_id', (int) $item_id);
			$query = $this->db->update('items');
		} else {
			$this->db->set('added_date', date("Y-m-d H:i:s"));
			$query = $this->db->insert('items');
			$item_id = $this->db->insert_id();
		}

		if ($query === TRUE AND is_numeric($item_id)) {

			if ( ! empty($save['menu_assoc'])) {
				$this->load->model('ItemsMenuAssoc_model');
				$this->ItemsMenuAssoc_model->AddMenuAssoc($item_id, $save['menu_assoc']);

				// UPDATE STOCK MENU FROM HERE
				

			}
			return $item_id;
		}
	}

	public function deleteItem($item_id) {
		if (is_numeric($item_id)) $item_id = array($item_id);

		if ( ! empty($item_id) AND ctype_digit(implode('', $item_id))) {
			$this->db->where_in('item_id', $item_id);
			$this->db->delete('items');
			if (($affected_rows = $this->db->affected_rows()) > 0) {
				// $this->load->model('ItemsMenuAssoc_model');
				// $this->ItemsMenuAssoc_model->deleteMenuAssoc($item_id);

				return $affected_rows;
			}
		}
	}
}

/* End of file menus_model.php */
/* Location: ./system/smartresto/models/menus_model.php */