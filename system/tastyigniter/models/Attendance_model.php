<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Attendance_model extends TI_Model {

    public function Getlocation() {
        $this->db->select('*');
        $this->db->from('locations');
        $query = $this->db->get();
        return $query->result();
    }

    public function Gethotel_details($id) {
        $this->db->from('locations');
        $this->db->where('location_id', $id);
        $query = $this->db->get();
        $result = array();
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
        }
        return $result;
    }

    public function check_num($filter, $location_id) {

//        if (is_array($filter_data) AND ! empty($filter_data)) {
        $this->db->from('location_subscription');
        $this->db->where('location_id', $location_id);
//            if (!empty($filter_data['location_subscription_id'])) {
//                $this->db->like('location_subscription_id', $filter_data['location_subscription_id']);
//            }
        $query = $this->db->get();

        $result = array();
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
        }
        if ($result == null) {
            
        } else {
            foreach ($result as $value) {
                $location_subscription_id[] = $value['location_subscription_id'];
            }
            $this->db->from('customers_subscription');
            $this->db->where_in('subscription_to', $location_subscription_id);
            $query1 = $this->db->get();
            $result1 = array();
            if ($query1->num_rows() > 0) {
                $result1 = $query1->result_array();
            }
            foreach ($result1 as $value1) {
                $customer_id[] = $value1['customer_id'];
            }

            $this->db->from('customers');
            $this->db->where_in('customer_id', $customer_id);
            $this->db->like('telephone', $filter['location']);
            $this->db->or_like('alt_telephone', $filter['location']);
            $query2 = $this->db->get();
            $result2 = array();
            if ($query2->num_rows() > 0) {
                $result2 = $query2->result_array();
            }
            return $result2;
        }
    }

    public function getattendance($customer_id, $location_id) {
        $this->db->from('attendance');
        $this->db->where('customer_id', $customer_id);
        $query1 = $this->db->get();
        $result1 = array();
        if ($query1->num_rows() > 0) {
            $result1 = $query1->result_array();
        }
        foreach ($result1 as $val) {
            $customer_id_present_in_table = $val['customer_id'];
            $location_id_present_in_table = $val['location_id'];
        }
        if ($customer_id == $customer_id_present_in_table && $location_id == $location_id_present_in_table) {
            
        } else {
            $date = date('Y-m-d H:i:s');
            $this->db->insert('attendance', array('customer_id' => $customer_id,
                'checking_date' => $date, 'location_id' => $location_id)
            );
        }
    }

    public function getAutoComplete($filter_data = array()) {
        if (is_array($filter_data) AND ! empty($filter_data)) {
            //selecting all records from the menu and categories tables.
            $this->db->from('locations');

            $this->db->where('subscription', '1');

            if (!empty($filter_data['location_name'])) {
                $this->db->like('location_name', $filter_data['location_name']);
            }

            $query = $this->db->get();
            $result = array();
            if ($query->num_rows() > 0) {
                $result = $query->result_array();
            }

            return $result;
        }
    }

    public function getMAutoComplete($menu_id) {
        $this->db->select('menu_id, stock_qty, menu_status, menu_location');
        $this->db->from('menus');
        $this->db->where('menu_status', '1');
        $this->db->where('menu_id', $menu_id);

        $query = $this->db->get();

        if ($query->num_rows() > 0) {
            return $query->row_array();
        }
    }

    public function getItemAutoComplete($filter_data = array()) {
        if (is_array($filter_data) AND ! empty($filter_data)) {
            //selecting all records from the menu and categories tables.
            $this->db->from('items');

            $this->db->where('item_status', '1');

            if (!empty($filter_data['item_name'])) {
                $this->db->like('item_name', $filter_data['item_name']);
            }

            $query = $this->db->get();
            $result = array();

            if ($query->num_rows() > 0) {
                $result = $query->result_array();
            }

            return $result;
        }
    }

    public function checkphone($telephone) {
        $this->db->from('customers');

        $this->db->where('telephone', $telephone);
        $query = $this->db->get();
        $result = array();
        if ($query->num_rows() > 0) {
            $result = $query->row();
            $data = array(
                'customer_id' => $result->customer_id
            );
            $this->db->insert('attendance', $data);
            return $this->db->insert_id();
        } else {
            $result = 0;
        }
    }

    public function checkinglist($hotel_location_id) {
//        $this->db->from('attendance');
//        $this->db->where('location_id', $hotel_location_id);
//        $query = $this->db->get();
//        $result = array();
//        if ($query->num_rows() > 0) {
//            $result = $query->result_array();
//            foreach ($result as $value) {
//                $customer_id[] = $value['customer_id'];
//            }
//        }
//        $this->db->from('customers');
//        $this->db->where_in('customer_id', $customer_id);
//
//        $query1 = $this->db->get();
//        $result1 = array();
//
//        if ($query1->num_rows() > 0) {
//            $result1 = $query1->result_array();
//        }
//
//        return $result1;

        $this->db->select('a.checking_date,c.first_name,c.last_name,a.attendance_id');
        $this->db->where('location_id', $hotel_location_id);
        $this->db->from('customers c');
        $this->db->join('attendance a', 'a.customer_id= c.customer_id', 'inner');
        $query = $this->db->get();
        return $query->result();
    }

    public function checkout($attendance_id) {
        $this->db->where('attendance_id', $attendance_id);
        $this->db->delete('attendance');
        return true;
    }

    public function getAutoCompleteProfile($location_id) {
        $this->db->from('location_subscription');
        $this->db->where('location_id', $location_id);
        $query = $this->db->get();
        $result = array();
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            foreach ($result as $value) {
                $location_subscription_id[] = $value['location_subscription_id'];
            }
            $this->db->from('customers_subscription');
            $this->db->where_in('subscription_to', $location_subscription_id);

            $querys = $this->db->get();
            $results = array();
            $results = $querys->result_array();
            foreach ($results as $values) {
                $customer_id[] = $values['customer_id'];
            }
            $this->db->from('customers');

            $this->db->where_in('customer_id', $customer_id);

            $querys_customer = $this->db->get();
            $results_customer = array();
            $results_customer = $querys_customer->result_array();
            return $results_customer;
        }
    }

    public function check_attendence($customer_id) {
        $this->db->from('attendance');
        $this->db->where('customer_id', $customer_id);

        $query = $this->db->get();


        if ($query->num_rows() > 0) {
            return $query->num_rows();
        }
    }

}

/* End of file menus_model.php */
/* Location: ./system/smartresto/models/menus_model.php */