<?php

defined('BASEPATH') or exit('No direct script access allowed');


class ItemsMenuAssoc_model extends TI_Model {
	
	public function AddMenuAssoc($item_id, $save = array()) {
		if (!empty($save)) {

			$newData = array();
			foreach ($save as $option => $value) {
				for ($i=0; $i < count($save[$option]); $i++) { 
					$newData[$i][$option] = $save[$option][$i];
				}
			}
			
			if ( !empty($newData) ) {
				$this->db->where('item_id', $item_id);
				$this->db->delete('items_menu_association');				
				$substract = 0;
				foreach ($newData as $option => $value) {
					if( !empty( $value['menu_id'] ) ){
						if ( $value['substract'] == "on" ) {
							$substract = 1;
						}else{
							$substract = 0;
						}
						$this->db->set('menu_id', $value['menu_id']);
						$this->db->set('required_quantity', $value['requiredQ']);
						$this->db->set('substract_option', $substract);
						$this->db->set('item_id', $item_id);
						$result = $this->db->insert('items_menu_association');

						// implement menu stock updation
						if($result){
							$qty = $this->menuStockUpdation($value['menu_id']);
							$this->db->set('stock_qty', $qty);
							$this->db->where('menu_id', (int) $value['menu_id']);
							$query = $this->db->update('menus');
						}

					}
				}
			}
		}
	}

	public function menuStockUpdation($menu_id){
		$massocs = $this->Items_model->getItemAssociation($menu_id);
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


	public function getMenuAssoc($item_id) {
		$this->db->select('items_menu_association.item_id, items_menu_association.menu_id, items_menu_association.required_quantity, items_menu_association.substract_option, menus.menu_id, menu_name, stock_qty, subtract_stock');
		$this->db->from('items_menu_association');
		$this->db->join('menus', 'items_menu_association.menu_id = menus.menu_id', 'left');
		$this->db->where('items_menu_association.item_id', $item_id);

		$query = $this->db->get();
		//echo $this->db->last_query();		
		if ($query->num_rows() > 0) {
			return $query->result_array();
		}
	}

	public function getItemAssoc($menu_id) {
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

	public function deleteMenuAssoc($item_id)
	{
		$this->db->where_in('item_id', $item_id);
		$result = $this->db->delete('items_menu_association');
		if ($result) {
			$this->Items_model->increaseStock($item_id, 500);
		}
	}

	//Get Order Item Menu Association
	public function getItemOrderMenuAssoc($menu_id, $quantity)
	{
		$this->load->model('Items_model');
		$this->db->from('items_menu_association');
        $this->db->where('menu_id', $menu_id);

        $query = $this->db->get();
        $result = array();
		if ($query->num_rows() > 0) {
            $result = $query->result_array();
            foreach ($result as $value) {
            	if ( $value['substract_option'] == 1 ) {
            		$new_quant = $value['required_quantity'] * $quantity;
            		$this->Items_model->updateStock($value['item_id'], $new_quant);
            	}
            }
        }
	}
}

/* End of file menus_model.php */
/* Location: ./system/smartresto/models/menus_model.php */