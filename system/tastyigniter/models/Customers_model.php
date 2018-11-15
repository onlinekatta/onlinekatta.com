<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Customers_model extends TI_Model {

    public function getCount($filter = array()) {
        if (!empty($filter['filter_search'])) {
            $this->db->like('first_name', $filter['filter_search']);
            $this->db->or_like('last_name', $filter['filter_search']);
            $this->db->or_like('email', $filter['filter_search']);
        }

        if (isset($filter['filter_status']) AND is_numeric($filter['filter_status'])) {
            $this->db->where('status', $filter['filter_status']);
        }

        if (!empty($filter['filter_date'])) {
            $date = explode('-', $filter['filter_date']);
            $this->db->where('YEAR(date_added)', $date[0]);
            $this->db->where('MONTH(date_added)', $date[1]);
        }

        $this->db->from('customers');

        return $this->db->count_all_results();
    }

    public function getList($filter = array()) {
        if (!empty($filter['page']) AND $filter['page'] !== 0) {
            $filter['page'] = ($filter['page'] - 1) * $filter['limit'];
        }

        if ($this->db->limit($filter['limit'], $filter['page'])) {
            $this->db->from('customers');

            if (!empty($filter['sort_by']) AND ! empty($filter['order_by'])) {
                $this->db->order_by($filter['sort_by'], $filter['order_by']);
            }

            if (!empty($filter['filter_search'])) {
                $this->db->like('first_name', $filter['filter_search']);
                $this->db->or_like('last_name', $filter['filter_search']);
                $this->db->or_like('email', $filter['filter_search']);
            }

            if (isset($filter['filter_status']) AND is_numeric($filter['filter_status'])) {
                $this->db->where('status', $filter['filter_status']);
            }

            if (!empty($filter['filter_date'])) {
                $date = explode('-', $filter['filter_date']);
                $this->db->where('YEAR(date_added)', $date[0]);
                $this->db->where('MONTH(date_added)', $date[1]);
            }

            $query = $this->db->get();
            $result = array();

            if ($query->num_rows() > 0) {
                $result = $query->result_array();
            }

            return $result;
        }
    }

    public function getCustomers() {
        $this->db->from('customers');

        $query = $this->db->get();
        $result = array();

        if ($query->num_rows() > 0) {
            $result = $query->result_array();
        }

        return $result;
    }

    public function getCustomersDetails($email) {
        $this->db->from('customers');
        $this->db->join('addresses', 'addresses.customer_id=customers.customer_id OR addresses.address_id=customers.address_id');
        // $this->db->or_where('addresses.address_id=customers.address_id');
        $this->db->where('email', strtolower($email));

        $query = $this->db->get();

        if ($query->num_rows() === 1) {
            $row = $query->row_array();

            return $row;
        }
    }

    public function getCustomersDetailsTelephone($telephone) {
        $this->db->from('customers');
        $this->db->join('addresses', 'addresses.customer_id=customers.customer_id OR addresses.address_id=customers.address_id');
        // $this->db->or_where('addresses.address_id=customers.address_id');
        $this->db->where('telephone', $telephone);
        $this->db->limit(1);

        $query = $this->db->get();

        if ($query->num_rows() === 1) {
            $row = $query->row_array();

            return $row;
        }
    }

    public function getCustomer($customer_id) {
        if (is_numeric($customer_id)) {
            $this->db->from('customers');
            $this->db->where('customer_id', $customer_id);

            $query = $this->db->get();

            if ($query->num_rows() > 0) {
                return $query->row_array();
            }
        }
    }

    public function getSubscriptions($customer_id) {
        $subscription_data = array();

        if (!empty($customer_id) AND is_numeric($customer_id)) {
            $this->db->from('customers_subscription');

            $this->db->where('customer_id', $customer_id);

            $query = $this->db->get();

            if ($query->num_rows() > 0) {
                foreach ($query->result_array() as $result) {

                    $subscription_data[$result['customer_subscription_id']] = array(
                        'customer_subscription_id' => $result['customer_subscription_id'],
                        'subscription_to' => $result['subscription_to'],
                        'start_date' => $result['start_date'],
                        'total_subscription_amount' => $result['total_subscription_amount'],
                        'paid_amount' => $result['paid_amount'],
                        'balance' => $result['balance'],
                        'payment_deadline' => $result['payment_deadline'],
                        'reminder_notification' => $result['reminder_notification'],
                    );
                }
            }
        }
        ///  print_r($subscription_data);
        return $subscription_data;
    }

    public function getPaymentSubscriptionHistory($customer_id) {
        $this->db->from('customers_subscription');
        $this->db->where('customer_id', $customer_id);

        $this->db->join('location_subscription', 'location_subscription.location_subscription_id=customers_subscription.subscription_to');
        $this->db->join('locations', 'locations.location_id=location_subscription.location_id');

        $query = $this->db->get();
        $result = array();

        if ($query->num_rows() > 0) {
            $result = $query->result_array();
        }
        return $result;
    }

    public function getPaymentSubscriptionHistoryDetails($customer_subscription_id) {
        $this->db->from('customers_subscription_history');
        $this->db->where('customer_subscription_id', $customer_subscription_id);

        $query = $this->db->get();
        $result = array();

        if ($query->num_rows() > 0) {
            $result = $query->result_array();
        }

        return $result;
    }

    public function getCustomerDates() {
        $this->db->select('date_added, MONTH(date_added) as month, YEAR(date_added) as year');
        $this->db->from('customers');
        $this->db->group_by('MONTH(date_added)');
        $this->db->group_by('YEAR(date_added)');
        $query = $this->db->get();
        $result = array();

        if ($query->num_rows() > 0) {
            $result = $query->result_array();
        }

        return $result;
    }

    public function getCustomersForMessages($type) {
        $this->db->select('customer_id, email, status');
        $this->db->from('customers');
        $this->db->where('status', '1');

        $query = $this->db->get();
        $result = array();

        if ($query->num_rows() > 0) {
            foreach ($query->result_array() as $row)
                $result[] = ($type === 'email') ? $row['email'] : $row['customer_id'];
        }

        return $result;
    }

    public function getCustomerForMessages($type, $customer_id) {
        if (!empty($customer_id) AND is_array($customer_id)) {
            $this->db->select('customer_id, email, status');
            $this->db->from('customers');
            $this->db->where('status', '1');
            $this->db->where_in('customer_id', $customer_id);

            $query = $this->db->get();

            if ($query->num_rows() > 0) {
                foreach ($query->result_array() as $row)
                    $result[] = ($type === 'email') ? $row['email'] : $row['customer_id'];
            }

            return $result;
        }
    }

    public function getCustomersByGroupIdForMessages($type, $customer_group_id) {
        if (is_numeric($customer_group_id)) {
            $this->db->select('customer_id, email, customer_group_id, status');
            $this->db->from('customers');
            $this->db->where('customer_group_id', $customer_group_id);
            $this->db->where('status', '1');

            $query = $this->db->get();
            $result = array();

            if ($query->num_rows() > 0) {
                foreach ($query->result_array() as $row)
                    $result[] = ($type === 'email') ? $row['email'] : $row['customer_id'];
            }

            return $result;
        }
    }

    public function getCustomersByNewsletterForMessages($type) {
        $this->db->select('customer_id, email, newsletter, status');
        $this->db->from('customers');
        $this->db->where('newsletter', '1');
        $this->db->where('status', '1');

        $query = $this->db->get();
        $result = array();

        if ($query->num_rows() > 0) {
            foreach ($query->result_array() as $row)
                $result[] = ($type === 'email') ? $row['email'] : $row['customer_id'];

            $this->load->model('Extensions_model');
            $newsletter = $this->Extensions_model->getModule('newsletter');
            if ($type === 'email' AND ! empty($newsletter['ext_data']['subscribe_list'])) {
                $result = array_merge($result, $newsletter['ext_data']['subscribe_list']);
            }
        }

        return $result;
    }

    public function getCustomerByEmail($email) {

        $this->db->from('customers');
        $this->db->where('email', strtolower($email));

        $query = $this->db->get();

        if ($query->num_rows() === 1) {
            $row = $query->row_array();

            return $row;
        }
    }

    public function resetPassword($customer_id, $reset = array()) {
        if (is_numeric($customer_id) AND ! empty($reset)) {

            $this->db->from('customers');
            $this->db->where('customer_id', $customer_id);
            $this->db->where('email', strtolower($reset['email']));

            if (!empty($reset['security_question_id']) AND ! empty($reset['security_answer'])) {
                $this->db->where('security_question_id', $reset['security_question_id']);
                $this->db->where('security_answer', $reset['security_answer']);
            }

            $this->db->where('status', '1');
            $query = $this->db->get();
            if ($query->num_rows() === 1) {
                $row = $query->row_array();

                //Random Password
                $alphabet = "abcdefghijklmnopqrstuwxyzABCDEFGHIJKLMNOPQRSTUWXYZ0123456789";
                $pass = array();
                for ($i = 0; $i < 8; $i ++) {
                    $n = rand(0, strlen($alphabet) - 1);
                    $pass[$i] = $alphabet[$n];
                }

                $password = implode('', $pass);

                $this->db->set('salt', $salt = substr(md5(uniqid(rand(), TRUE)), 0, 9));
                $this->db->set('password', sha1($salt . sha1($salt . sha1($password))));
                $this->db->where('customer_id', $row['customer_id']);
                $this->db->where('email', $row['email']);

                if ($this->db->update('customers') AND $this->db->affected_rows() > 0) {

                    $mail_data['first_name'] = $row['first_name'];
                    $mail_data['last_name'] = $row['last_name'];
                    $mail_data['created_password'] = $password;
                    $mail_data['account_login_link'] = root_url('account/login');

                    $this->load->model('Mail_templates_model');
                    $mail_template = $this->Mail_templates_model->getTemplateData($this->config->item('mail_template_id'), 'password_reset');

                    $this->sendMail($row['email'], $mail_template, $mail_data);

                    return TRUE;
                }
            }
        }

        return FALSE;
    }

    public function getAutoComplete($filter_data = array()) {
        if (is_array($filter_data) && !empty($filter_data)) {
            $this->db->from('customers');

            if (!empty($filter_data['customer_name'])) {
                $this->db->like('CONCAT(first_name, last_name)', $filter_data['customer_name']);
            }

            if (!empty($filter_data['customer_id'])) {
                $this->db->where('customer_id', $filter_data['customer_id']);
            }

            $query = $this->db->get();
            $result = array();

            if ($query->num_rows() > 0) {
                $result = $query->result_array();
            }

            return $result;
        }
    }

    public function saveCustomer($customer_id, $save = array()) {
        if (empty($save))
            return FALSE;

        if (isset($save['first_name'])) {
            $this->db->set('first_name', $save['first_name']);
        }

        if (isset($save['last_name'])) {
            $this->db->set('last_name', $save['last_name']);
        }

        if (isset($save['email'])) {
            $this->db->set('email', strtolower($save['email']));
        }

        if (isset($save['password'])) {
            $this->db->set('salt', $salt = substr(md5(uniqid(rand(), TRUE)), 0, 9));
            $this->db->set('password', sha1($salt . sha1($salt . sha1($save['password']))));
        }

        if (isset($save['telephone'])) {
            $this->db->set('telephone', $save['telephone']);
        }

        if (isset($save['alt_telephone'])) {
            $this->db->set('alt_telephone', $save['alt_telephone']);
        }

        if (isset($save['security_question_id'])) {
            $this->db->set('security_question_id', $save['security_question_id']);
        }

        if (isset($save['security_answer'])) {
            $this->db->set('security_answer', $save['security_answer']);
        }

        if (isset($save['newsletter']) AND $save['newsletter'] === '1') {
            $this->db->set('newsletter', $save['newsletter']);
        } else {
            $this->db->set('newsletter', '0');
        }

        if (isset($save['customer_group_id'])) {
            $this->db->set('customer_group_id', $save['customer_group_id']);
        }

        if (isset($save['date_added'])) {
            $add['date_added'] = mdate('%Y-%m-%d', time());
            $this->db->set('date_added', $save['date_added']);
        }

        if (isset($save['status']) AND $save['status'] === '1') {
            $this->db->set('status', $save['status']);
        } else {
            $this->db->set('status', '0');
        }

        if (is_numeric($customer_id)) {
            $action = 'updated';
            $this->db->where('customer_id', $customer_id);
            $query = $this->db->update('customers');
        } else {
            $action = 'added';
            $this->db->set('date_added', mdate('%Y-%m-%d', time()));
            $query = $this->db->insert('customers');
            $customer_id = $this->db->insert_id();
        }

        if ($query === TRUE AND is_numeric($customer_id)) {
            if (isset($save['address'])) {
                $this->saveAddress($customer_id, $save['address']);
            }

            if (isset($save['subscription']) AND ! empty($save['subscription'])) {
                $this->saveSubscriptions($customer_id, $save['subscription']);
            }

            if ($action === 'added') {
                $mail_data['first_name'] = $save['first_name'];
                $mail_data['last_name'] = $save['last_name'];
                $mail_data['account_login_link'] = root_url('account/login');

                $this->load->model('Mail_templates_model');
                $config_registration_email = is_array($this->config->item('registration_email')) ? $this->config->item('registration_email') : array();

                if ($this->config->item('registration_email') === '1' OR in_array('customer', $config_registration_email)) {
                    $mail_template = $this->Mail_templates_model->getTemplateData($this->config->item('mail_template_id'), 'registration');
                    $this->sendMail($save['email'], $mail_template, $mail_data);
                }

                if (in_array('admin', $config_registration_email)) {
                    $mail_template = $this->Mail_templates_model->getTemplateData($this->config->item('mail_template_id'), 'registration_alert');
                    $this->sendMail($this->config->item('site_email'), $mail_template, $mail_data);
                }

                $this->saveCustomerGuestOrder($customer_id, $save['email']);
            }

            return $customer_id;
        }
    }

    private function saveCustomerGuestOrder($customer_id, $customer_email) {
        $query = FALSE;

        if (is_numeric($customer_id) AND ! empty($customer_email)) {

            $query = $this->db->from('orders')->where('email', $customer_email)->get();

            if ($query->num_rows() > 0) {
                foreach ($query->result_array() as $row) {
                    if (empty($row['order_id']))
                        continue;

                    $this->db->set('customer_id', $customer_id);
                    $this->db->where('order_id', $row['order_id'])->where('email', $customer_email);
                    $this->db->update('orders');

                    if ($row['order_type'] === '1' AND ! empty($row['address_id'])) {
                        $this->db->set('customer_id', $customer_id);
                        $this->db->where('address_id', $row['address_id']);
                        $this->db->update('addresses');
                    }

                    if (!empty($row['payment'])) {
                        $this->db->set('customer_id', $customer_id);
                        $this->db->where('order_id', $row['order_id']);
                        $this->db->update('pp_payments');
                    }

                    $this->db->set('customer_id', $customer_id);
                    $this->db->where('order_id', $row['order_id']);
                    $this->db->update('coupons_history');
                }
            }

            $this->db->set('customer_id', $customer_id);
            $this->db->where('email', $customer_email);
            $this->db->update('reservations');

            $query = TRUE;
        }

        return $query;
    }

    public function saveAddress($customer_id, $addresses = array()) {
        if (is_numeric($customer_id) AND ! empty($addresses)) {
            $this->db->where('customer_id', $customer_id);
            $this->db->delete('addresses');

            $this->load->model('Addresses_model');

            foreach ($addresses as $key => $address) {
                if (!empty($address['address_1'])) {
                    $this->Addresses_model->saveAddress($customer_id, '', $address);
                }
            }
        }
    }

    public function saveSubscriptions($customer_id, $subscriptions = array()) {
        if (is_numeric($customer_id) AND ! empty($subscriptions)) {
            $this->db->where('customer_id', $customer_id);
            $this->db->delete('customers_subscription');

            foreach ($subscriptions as $key => $subscription) {
                if (!empty($subscription['subscription_to'])) {
                    $this->saveSubscription($customer_id, $subscription);
                }
            }
        }
    }

    public function saveSubscription($customer_id = FALSE, $subscription = array()) {

        if (empty($subscription))
            return FALSE;

        if ($customer_id) {
            $this->db->set('customer_id', $customer_id);
        }

        if (isset($subscription['subscription_to'])) {
            $this->db->set('subscription_to', $subscription['subscription_to']);
        }
        if (isset($subscription['customer_subscription_id'])) {
            $this->db->set('customer_subscription_id', $subscription['subscription_to']);
        }

        if (isset($subscription['start_date'])) {
            $this->db->set('start_date', $subscription['start_date']);
        }

        if (isset($subscription['total_subscription_amount'])) {
            $this->db->set('total_subscription_amount', $subscription['total_subscription_amount']);
        }

        if (isset($subscription['paid_amount'])) {
            $this->db->set('paid_amount', $subscription['paid_amount']);
        }

        if (isset($subscription['balance'])) {
            $this->db->set('balance', $subscription['balance']);
        }

        if (isset($subscription['payment_deadline'])) {
            $this->db->set('payment_deadline', $subscription['payment_deadline']);
        }

        $this->db->set('reminder_notification', $subscription['reminder_notification']);

        $query = $this->db->insert('customers_subscription');
        $customers_subscription_id = $this->db->insert_id();

        return ($query === TRUE AND is_numeric($customer_id)) ? $customer_id : FALSE;
    }

    public function insert_biometric_id($data, $current_customer_id) {
        $this->db->from('biometric');
        $this->db->where('current_user_id', $current_customer_id);
        $query1 = $this->db->get();
        $result1 = array();
        if ($query1->num_rows() > 0) {
            $result1 = $query1->result_array();
        }
        foreach ($result1 as $val) {
            $customer_id_present_in_table = $val['current_user_id'];
            $satus_present_in_table = $val['status'];
        }
        $status = 1;
        if ($current_customer_id == $customer_id_present_in_table && $status == $satus_present_in_table) {
            echo 'present';
        } else {
            $this->db->insert('biometric', $data);
        }
    }

    public function change_biometric_status($data, $current_customer_id) {
        $this->db->from('biometric');
        $this->db->where('current_user_id', $current_customer_id);
        $query1 = $this->db->get();
        $result1 = array();
        if ($query1->num_rows() > 0) {
            $result1 = $query1->result_array();
        }
        foreach ($result1 as $val) {
            $customer_id_present_in_table = $val['current_user_id'];
            $satus_present_in_table = $val['status'];
        }
        $status = 3;
        if ($current_customer_id == $customer_id_present_in_table && $status == $satus_present_in_table) {
            echo 'updated';
        } else {
            $this->db->set('status', $status);
            $this->db->set('updated_at', $data['updated_at']);
            $this->db->where('current_user_id', $current_customer_id); //which row want to upgrade  
            $this->db->update('biometric');
        }
    }

    public function updateSubscriptionPayment($data = array()) {
        //  $subscriptions = $this->getSubscriptionDetails($data['customer_subscription_id']);
        // $payments = $this->getSubscriptionPaymentDetails($data['customer_subscription_id']);

        $this->db->from('customers_subscription');
        $this->db->where('subscription_to', $data['subscription_to']);
        $this->db->where('customer_id', $data['customer_id']);
        $query = $this->db->get();
        if ($query->num_rows() === 1) {
            $row = $query->row_array();
        }
        // $subscription_to = $subscriptions['subscription_to'];
        $paid_amount = $row['paid_amount'];
        $balance = $row['balance'];
        $payment_amount = $data['payment_amount'];
        // $customer_id = $subscriptions['customer_id'];

        $final_amt = $paid_amount + $payment_amount;
        $balance = $row['total_subscription_amount'] - $final_amt;
        $this->db->set('paid_amount', $final_amt);
        $this->db->set('balance', $balance);
        $this->db->where('subscription_to', $data['subscription_to']); //which row want to upgrade  
        $this->db->where('customer_id', $data['customer_id']);
        $this->db->update('customers_subscription');

        // $this->db->set('payment', $data['payment_amount']);
        //$this->db->set('subscription_to', $data['subscription_to']);
        //$this->db->set('customer_id', $customer_id);
        // $query = $this->db->insert('customers_subscription_history');
        $data1 = array(
            'payment' => $data['payment_amount'],
            'subscription_to' => $data['subscription_to'],
            'customer_id' => $data['customer_id']
        );
        $query = $this->db->insert('customers_subscription_history', $data1);



//        if (!empty($payments)) {
//            $total_amount = $subscriptions['total_subscription_amount'];
//
//            if ($total_amount > $paid_amount) {
//                $remaining_amount = $total_amount - $paid_amount;
//                if ($remaining_amount >= $payment_amount) {
//                    $this->db->set('payment', $data['payment_amount']);
//                    $this->db->set('customer_subscription_id', $data['customer_subscription_id']);
//                    $query = $this->db->insert('customers_subscription_history');
//
//                    $paid_amount = $paid_amount + $payment_amount;
//                    $balance = $total_amount - $paid_amount;
//                    $this->db->set('paid_amount', $paid_amount);
//                    $this->db->set('balance', $balance);
//                    $this->db->where('subscription_to', $subscription_to);
//                    $this->db->update('customers_subscription');
//                } else {
//                    $remaining_amount = $payment_amount - $remaining_amount;
//                    $this->db->set('payment', $remaining_amount);
//                    $this->db->set('customer_subscription_id', $data['customer_subscription_id']);
//                    $query = $this->db->insert('customers_subscription_history');
//
//                    $this->db->set('paid_amount', $total_amount);
//                    $this->db->set('balance', '0');
//                    $this->db->where('subscription_to', $subscription_to);
//                    $this->db->update('customers_subscription');
//                }
//            }
//        } else {
//            $total_amount = $subscriptions['total_subscription_amount'];
//            if ($total_amount > $payment_amount) {
//                $result = $total_amount - $payment_amount;
//                $this->db->set('payment', $data['payment_amount']);
//                $this->db->set('customer_subscription_id', $data['customer_subscription_id']);
//                $query = $this->db->insert('customers_subscription_history');
//
//                $this->db->set('paid_amount', $payment_amount);
//                $this->db->set('balance', $result);
//                $this->db->where('subscription_to', $subscription_to);
//                $this->db->update('customers_subscription');
//            } else {
//                $result = $payment_amount - $total_amount;
//                $this->db->set('payment', $data['payment_amount']);
//                $this->db->set('customer_subscription_id', $data['customer_subscription_id']);
//                $query = $this->db->insert('customers_subscription_history');
//
//                $this->db->set('paid_amount', $total_amount);
//                $this->db->set('balance', '0');
//                $this->db->where('subscription_to', $subscription_to);
//                $this->db->update('customers_subscription');
//            }
//        }
    }

    public function getSubscriptionDetails($id) {
        $this->db->from('customers_subscription');
        $this->db->where('customer_subscription_id', $id);
        $query = $this->db->get();

        if ($query->num_rows() === 1) {
            $row = $query->row_array();

            return $row;
        }
    }

    public function getSubscriptionPaymentDetails($id) {
        $this->db->from('customers_subscription_history');
        $this->db->where('customer_subscription_id', $id);
        $query = $this->db->get();
        $result = array();

        if ($query->num_rows() > 0) {
            $result = $query->result_array();
        }

        return $result;
    }

    public function deleteCustomer($customer_id) {
        if (is_numeric($customer_id))
            $customer_id = array($customer_id);

        if (!empty($customer_id) AND ctype_digit(implode('', $customer_id))) {
            $this->db->where_in('customer_id', $customer_id);
            $this->db->delete('customers');

            if (($affected_rows = $this->db->affected_rows()) > 0) {
                $this->db->where_in('customer_id', $customer_id);
                $this->db->delete('addresses');

                $this->db->where_in('customer_id', $customer_id);
                $this->db->delete('customers_subscription');

                return $affected_rows;
            }
        }
    }

    public function sendMail($email, $template = array(), $data = array()) {
        if (empty($template) OR empty($email) OR ! isset($template['subject'], $template['body']) OR empty($data)) {
            return FALSE;
        }

        $this->load->library('email');

        $this->email->initialize();

        $this->email->from($this->config->item('site_email'), $this->config->item('site_name'));
        $this->email->to(strtolower($email));
        $this->email->subject($template['subject'], $data);
        $this->email->message($template['body'], $data);

        if ($this->email->send()) {
            return TRUE;
        } else {
            log_message('debug', $this->email->print_debugger(array('headers')));
        }
    }

    public function validateCustomer($customer_id) {
        if (is_numeric($customer_id)) {
            $this->db->from('customers');
            $this->db->where('customer_id', $customer_id);

            $query = $this->db->get();

            if ($query->num_rows() > 0) {
                return TRUE;
            }
        }

        return FALSE;
    }

    public function reset($customer_id) {
        $this->db->set('status', 5);
        $this->db->where('current_user_id', $customer_id);
        $this->db->update('biometric');
    }

    public function check_attendence() {
        
    }

}

/* End of file customers_model.php */
/* Location: ./system/smartresto/models/customers_model.php */