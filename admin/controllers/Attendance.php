<?php

if (!defined('BASEPATH'))
    exit('No direct access allowed');

class Attendance extends Admin_Controller {

    public function __construct() {
        parent::__construct(); //  calls the constructor

        $this->load->model('Dashboard_model');
        $this->load->model('Locations_model');
        $this->load->model('Attendance_model');
        $this->load->model('Themes_model');
        $this->load->model('Updates_model');
        $this->load->model('Settings_model');
        $this->load->model('Mail_templates_model');
        $this->load->library('currency'); // load the currency library
        $this->lang->load('attendance');
    }

    public function index() {
        $this->template->setTitle($this->lang->line('text_heading'));
        $this->template->setHeading($this->lang->line('text_heading'));

//        $this->template->setButton($this->lang->line('button_new'), array('class' => 'btn btn-primary', 'href' => page_url() . '/edit'));
//        $this->template->setButton($this->lang->line('button_delete'), array('class' => 'btn btn-danger', 'onclick' => 'confirmDelete();'));

        if ($this->input->post('delete') AND $this->_deleteMenu() === TRUE) {
            redirect('attendance');
        }

        $order_by = (isset($filter['order_by']) AND $filter['order_by'] == 'ASC') ? 'DESC' : 'ASC';
        $data['sort_name'] = site_url('attendance' . $url . 'sort_by=menu_name&order_by=' . $order_by);
        $data['sort_location'] = site_url('attendance' . $url . 'sort_by=menu_location&order_by=' . $order_by);
        $data['sort_price'] = site_url('attendance' . $url . 'sort_by=menu_price&order_by=' . $order_by);
        $data['sort_stock'] = site_url('attendance' . $url . 'sort_by=stock_qty&order_by=' . $order_by);
        $data['sort_id'] = site_url('attendance' . $url . 'sort_by=attendance.menu_id&order_by=' . $order_by);

        $this->load->model('Image_tool_model');
        $data['get_location'] = $this->Attendance_model->Getlocation();
        $this->template->render('attendance', $data);
    }

    public function gethotel() {
        $hotel_location_id = $this->uri->segment(3);
        $data['get_location'] = $this->Attendance_model->Gethotel_details($hotel_location_id);
        $data['checkinglist'] = $this->Attendance_model->checkinglist($hotel_location_id);
        $this->load->view("attendance_info", $data);
    }

    public function Customer_name($location_id) {
        $json = array();

        if ($this->input->get('term')) {
            $filter = array(
                'location' => $this->input->get('term'),
                'location_id' => $location_id,
            );
            $results = $this->Attendance_model->check_num($filter, $location_id);
            if ($results) {
                foreach ($results as $result) {
                    $json['results'][] = array(
                        'id' => $result['customer_id'],
                        'text' => utf8_encode($result['first_name'] . ' ' . $result['last_name']),
                    );
                }
            } else {
                $json['results'] = array('id' => '0', 'text' => $this->lang->line('text_no_match'));
            }
        }

        $this->output->set_output(json_encode($json));
    }

    public function edit() {
        $this->template->setTitle(sprintf($this->lang->line('text_edit_heading')));
        $this->template->setHeading(sprintf($this->lang->line('text_edit_heading')));

        $this->template->setButton($this->lang->line('button_save'), array('class' => 'btn btn-primary', 'onclick' => '$(\'#edit-form\').submit();'));
        $this->template->setButton($this->lang->line('button_save_close'), array('class' => 'btn btn-default', 'onclick' => 'saveClose();'));
        $this->template->setButton($this->lang->line('button_icon_back'), array('class' => 'btn btn-default', 'href' => site_url('menus')));

        $this->template->setStyleTag(assets_url('js/datepicker/datepicker.css'), 'datepicker-css');
        $this->template->setScriptTag(assets_url("js/datepicker/bootstrap-datepicker.js"), 'bootstrap-datepicker-js');

        $result = $this->Attendance_model->checkphone($this->input->post('telephone'));
        $data['checkinglist'] = $this->Attendance_model->checkinglist();
        $this->template->render('attendance_edit', $data);
    }

    public function checkout() {
        $result = $this->Attendance_model->checkout($this->input->get('attendance_id'));
        $this->template->render('attendance_edit');
    }

    public function autocomplete() {
        $json = array();

        if ($this->input->get('term')) {
            $filter = array(
                'location' => $this->input->get('term'),
            );
            $results = $this->Attendance_model->getAutoComplete($filter);
            if ($results) {
                foreach ($results as $result) {
                    $json['results'][] = array(
                        'id' => $result['location_id'],
                        'text' => utf8_encode($result['location_name']),
                    );
                }
            } else {
                $json['results'] = array('id' => '0', 'text' => $this->lang->line('text_no_match'));
            }
        }

        $this->output->set_output(json_encode($json));
    }

    public function autocompleteprofile($location_id) {
        $customer_id = $this->input->post('location_id');

        if ($location_id) {
//            $results = $this->Attendance_model->getAutoCompleteProfile($location_id);
            $results = $this->Attendance_model->getattendance($customer_id, $location_id);
        }
        $this->output->set_output(json_encode($results));
    }

}

/* End of file dashboard.php */

/* Location: ./admin/controllers/dashboard.php */