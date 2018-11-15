<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Locations_model extends TI_Model {

    public function getCount($filter = array()) {
        if (!empty($filter['filter_search'])) {
            $this->db->like('location_name', $filter['filter_search']);
            $this->db->or_like('location_city', $filter['filter_search']);
            $this->db->or_like('location_state', $filter['filter_search']);
            $this->db->or_like('location_postcode', $filter['filter_search']);
        }

        if (isset($filter['filter_status']) AND is_numeric($filter['filter_status'])) {
            $this->db->where('location_status', $filter['filter_status']);
        }

        $this->db->from('locations');

        return $this->db->count_all_results();
    }

    public function getList($filter = array()) {
        if (!empty($filter['page']) AND $filter['page'] !== 0) {
            $filter['page'] = ($filter['page'] - 1) * $filter['limit'];
        }

        if ($this->db->limit($filter['limit'], $filter['page'])) {
            $this->db->from('locations');

            if (!empty($filter['sort_by']) AND ! empty($filter['order_by'])) {
                $this->db->order_by($filter['sort_by'], $filter['order_by']);
            }

            if (!empty($filter['filter_search'])) {
                $this->db->like('location_name', $filter['filter_search']);
                $this->db->or_like('location_city', $filter['filter_search']);
                $this->db->or_like('location_state', $filter['filter_search']);
                $this->db->or_like('location_postcode', $filter['filter_search']);
            }

            if (isset($filter['filter_status']) AND is_numeric($filter['filter_status'])) {
                $this->db->where('location_status', $filter['filter_status']);
            }

            $query = $this->db->get();
            $result = array();

            if ($query->num_rows() > 0) {
                $result = $query->result_array();
            }

            return $result;
        }
    }

    public function getLocations() {
        $this->db->from('locations');

        $this->db->where('location_status', '1');

        $query = $this->db->get();
        $result = array();

        if ($query->num_rows() > 0) {
            $result = $query->result_array();
        }

        return $result;
    }

    public function getLocationSubscriptions() {
        $this->db->from('location_subscription');
        $this->db->join('locations', 'locations.location_id=location_subscription.location_id');
        $this->db->where('locations.subscription', 1);

        $query = $this->db->get();
        $result = array();

        if ($query->num_rows() > 0) {
            $result = $query->result_array();
        }

        return $result;
    }

    public function getSubscriptions($location_id) {
        $subscription_data = array();

        if (!empty($location_id) AND is_numeric($location_id)) {
            $this->db->from('location_subscription');

            $this->db->where('location_id', $location_id);

            $query = $this->db->get();

            if ($query->num_rows() > 0) {
                foreach ($query->result_array() as $result) {

                    $subscription_data[$result['location_subscription_id']] = array(
                        'location_subscription_id' => $result['location_subscription_id'],
                        'subscription_name' => $result['subscription_name'],
                        'subscription_value' => $result['subscription_value'],
                        'meals_per_day' => $result['meals_per_day'],
                        'subscription_action' => $result['subscription_action'],
                        'extra_days' => $result['extra_days'],
                        'cycle' => $result['cycle'],
                        'subscription_detail' => $result['subscription_detail'],
                    );
                }
            }
        }

        return $subscription_data;
    }

    public function getLocationSubscription($location_id) {
        $this->db->from('location_subscription');

        $this->db->where('location_subscription_id', $location_id);
        $query = $this->db->get();

        if ($query->num_rows() > 0) {
            return $query->row_array();
        }
    }

    public function getLocationBuffet($location_id) {
        $this->db->from('location_buffet');

        $this->db->where('location_id', $location_id);
        $query = $this->db->get();

        if ($query->num_rows() > 0) {
            return $query->row_array();
        }
    }

    public function getTableLocations($location_id) {
        $this->db->from('locations');
        $this->db->join('location_tables', 'location_tables.location_id=locations.location_id');
        $this->db->join('tables', 'tables.table_id=location_tables.table_id');

        // $this->db->where('locations.location_status', '1');
        $this->db->where('location_tables.location_id', $location_id);

        $query = $this->db->get();
        $result = array();

        if ($query->num_rows() > 0) {
            $result = $query->result_array();
        }

        return $result;
    }

    public function getLocation($location_id) {

        if (is_numeric($location_id)) {
            $this->db->from('locations');
            $this->db->join('countries', 'countries.country_id = locations.location_country_id', 'left');
            //$this->db->join('working_hours', 'working_hours.location_id = locations.location_id', 'left');

            $this->db->where('location_id', $location_id);
            $query = $this->db->get();

            if ($query->num_rows() > 0) {
                return $query->row_array();
            }
        }
    }

    public function getLocationName($location_id) {
        $this->db->select('*');
        $this->db->from('locations');
        $this->db->where('location_id', $location_id);

        $query = $this->db->get();

        if ($query->num_rows() > 0) {
            return $query->row_array();
        }
    }

    public function getWorkingHours($location_id = FALSE) {
        $result = array();

        $this->db->from('working_hours');

        if (is_numeric($location_id)) {
            $this->db->where('location_id', $location_id);
        }

        $query = $this->db->get();

        if ($query->num_rows() > 0) {
            $result = $query->result_array();
        }

        return $result;
    }

    public function getAddress($location_id) {
        $address_data = array();

        if ($location_id !== 0) {
            $this->db->from('locations');
            $this->db->join('countries', 'countries.country_id = locations.location_country_id', 'left');

            $this->db->where('location_id', $location_id);
            $query = $this->db->get();

            if ($query->num_rows() > 0) {
                $row = $query->row_array();

                $address_data = array(
                    'location_id' => $row['location_id'],
                    'location_name' => $row['location_name'],
                    'address_1' => $row['location_address_1'],
                    'address_2' => $row['location_address_2'],
                    'city' => $row['location_city'],
                    'state' => $row['location_state'],
                    'postcode' => $row['location_postcode'],
                    'country_id' => $row['location_country_id'],
                    'country' => $row['country_name'],
                    'iso_code_2' => $row['iso_code_2'],
                    'iso_code_3' => $row['iso_code_3'],
                    'location_lat' => $row['location_lat'],
                    'location_lng' => $row['location_lng'],
                    'format' => $row['format'],
                );
            }
        }

        return $address_data;
    }

    public function getOpeningHourByDay($location_id = FALSE, $day = FALSE) {
        $weekdays = array('Monday' => 0, 'Tuesday' => 1, 'Wednesday' => 2, 'Thursday' => 3, 'Friday' => 4, 'Saturday' => 5, 'Sunday' => 6);

        $day = (!isset($weekdays[$day])) ? date('l', strtotime($day)) : $day;

        $hour = array('open' => '00:00:00', 'close' => '00:00:00', 'status' => '0');

        $this->db->from('working_hours');
        $this->db->where('location_id', $location_id);
        $this->db->where('weekday', $weekdays[$day]);

        $query = $this->db->get();

        if ($query->num_rows() > 0) {
            $row = $query->row_array();
            $hour['open'] = $row['opening_time'];
            $hour['close'] = $row['closing_time'];
            $hour['status'] = $row['status'];
        }

        return $hour;
    }

    public function getLocalRestaurant($lat = FALSE, $lng = FALSE, $search_query = FALSE) {
        if ($this->config->item('distance_unit') === 'km') {
            $sql = "SELECT *, ( 6371 * acos( cos( radians(?) ) * cos( radians( location_lat ) ) *";
        } else {
            $sql = "SELECT *, ( 3959 * acos( cos( radians(?) ) * cos( radians( location_lat ) ) *";
        }

        $sql .= "cos( radians( location_lng ) - radians(?) ) + sin( radians(?) ) *";
        $sql .= "sin( radians( location_lat ) ) ) ) AS distance ";
        $sql .= "FROM {$this->db->dbprefix('locations')} WHERE location_status = 1 ";
        $sql .= "ORDER BY distance LIMIT 0 , 20";

        if (!empty($lat) && !empty($lng)) {
            $query = $this->db->query($sql, array($lat, $lng, $lat));
        }

        $local_info = array();

        if ($query->num_rows() > 0) {
            $result = $query->first_row('array');

            if (!empty($result['location_radius'])) {
                $search_radius = $result['location_radius'];
            } else {
                $search_radius = (int) $this->config->item('search_radius');
            }

            if ($result['distance'] <= $search_radius) {
                $local_info = array(
                    'location_id' => $result['location_id'],
                    'location_name' => $result['location_name'],
                    'distance' => $result['distance'],
                    'search_query' => $search_query,
                );

                return $local_info;
            }
        }

        return FALSE;
    }

    public function updateDefault($address = array()) {
        $query = FALSE;

        if (empty($address) AND ! is_array($address)) {
            return $query;
        }

        if (isset($address['address_1'])) {
            $this->db->set('location_address_1', $address['address_1']);
        }

        if (isset($address['address_2'])) {
            $this->db->set('location_address_2', $address['address_2']);
        }

        if (isset($address['city'])) {
            $this->db->set('location_city', $address['city']);
        }

        if (isset($address['state'])) {
            $this->db->set('location_state', $address['state']);
        }

        if (isset($address['postcode'])) {
            $this->db->set('location_postcode', $address['postcode']);
        }

        if (isset($address['country_id'])) {
            $this->db->set('location_country_id', $address['country_id']);
        }

        if (isset($address['location_lat'])) {
            $this->db->set('location_lat', $address['location_lat']);
        }

        if (isset($address['location_lng'])) {
            $this->db->set('location_lng', $address['location_lng']);
        }

        $this->db->set('location_status', '1');

        $location_id = (isset($address['location_id']) AND is_numeric($address['location_id'])) ? (int) $address['location_id'] : $this->config->item('default_location_id');

        if (is_numeric($location_id)) {
            $this->db->where('location_id', $location_id);
            $query = $this->db->update('locations');
        } else {
            if ($query = $this->db->insert('locations')) {
                $location_id = (int) $this->db->insert_id();
            }
        }

        if (is_numeric($location_id) AND $default_address = $this->getAddress($location_id)) {
            $this->Settings_model->addSetting('prefs', 'main_address', $default_address, '1');
            $this->Settings_model->addSetting('prefs', 'default_location_id', $location_id, '0');
        }

        return $query;
    }

    public function saveLocation($location_id, $save = array()) {
//        if (empty($save))
//            return FALSE;
//        
//        if ($location_id == '') {
//            $options['auto_lat_lng'] = $save['auto_lat_lng'];
//            $options['opening_hours']['opening_type'] = $save['opening_type'];
//            $options['opening_hours']['daily_days'] = $save['daily_days'];
//            $options['opening_hours']['daily_hours'] = $save['daily_hours'];
//            $options['opening_hours']['flexible_hours'] = $save['flexible_hours'];
//            $options['opening_hours']['delivery_type'] = $save['delivery_type'];
//            $options['opening_hours']['delivery_days'] = $save['delivery_days'];
//            $options['opening_hours']['delivery_hours'] = $save['delivery_hours'];
//            $options['opening_hours']['collection_type'] = $save['collection_type'];
//            $options['opening_hours']['collection_days'] = $save['collection_days'];
//            $options['opening_hours']['collection_hours'] = $save['collection_hours'];
//            $options['future_orders'] = $save['future_orders'];
//            $options['future_order_days'] = $save['future_order_days'];
//            $options['payments'] = $save['payments'];
//            $options['delivery_areas'] = $save['delivery_areas'];
//            $options['gallery'] = $save['gallery'];
//
//            $query = $this->db->insert('locations', array(
//                'location_name' => $save['location_name'],
//                'location_email' => $save['email'],
//                'location_manager' => $save['location_manager'],
//                'location_telephone' => $save['telephone'],
//                'location_address_1' => $save['address']['address_1'],
//                'location_address_2' => $save['address']['address_2'],
//                'location_city' => $save['address']['city'],
//                'location_state' => $save['address']['state'],
//                'location_postcode' => $save['address']['postcode'],
//                'location_country_id' => $save['address']['country'],
//                'location_lat' => $save['address']['location_lat'],
//                'location_lng' => $save['address']['location_lng'],
//                'location_radius' => $save['auto_lat_lng'],
//                'description' => $save['description'],
//                'location_image' => $save['location_image'],
//                'location_status' => $save['location_status'],
//                'offer_delivery' => $save['offer_delivery'],
//                'out_range' => $save['out_range'],
//                'offer_collection' => $save['offer_collection'],
//                'delivery_time' => $save['delivery_time'],
//                'last_order_time' => $save['last_order_time'],
//                'reservation_time_interval' => $save['reservation_time_interval'],
//                'reservation_stay_time' => $save['reservation_stay_time'],
//                'collection_time' => $save['collection_time'],
////                'subscription' => $save['subscription_check'],
////                'buffet' => $save['buffet'],
////                'biometric' => $save['biometric'],
//                'options' => serialize($options)
//            ));
//            $location_id = $this->db->insert_id();
//        } 
//        else {

        if (isset($save['location_name'])) {
            $this->db->set('location_name', $save['location_name']);
        }

        if (isset($save['location_manager'])) {
            $this->db->set('location_manager', $save['location_manager']);
        }

        if (isset($save['address']['address_1'])) {
            $this->db->set('location_address_1', $save['address']['address_1']);
        }

        if (isset($save['address']['address_2'])) {
            $this->db->set('location_address_2', $save['address']['address_2']);
        }

        if (isset($save['address']['city'])) {
            $this->db->set('location_city', $save['address']['city']);
        }

        if (isset($save['address']['state'])) {
            $this->db->set('location_state', $save['address']['state']);
        }

        if (isset($save['address']['postcode'])) {
            $this->db->set('location_postcode', $save['address']['postcode']);
        }

        if (isset($save['address']['country'])) {
            $this->db->set('location_country_id', $save['address']['country']);
        }

        if (isset($save['address']['location_lat'])) {
            $this->db->set('location_lat', $save['address']['location_lat']);
        }

        if (isset($save['address']['location_lng'])) {
            $this->db->set('location_lng', $save['address']['location_lng']);
        }

        if (isset($save['email'])) {
            $this->db->set('location_email', $save['email']);
        }

        if (isset($save['telephone'])) {
            $this->db->set('location_telephone', $save['telephone']);
        }

        if (isset($save['description'])) {
            $this->db->set('description', $save['description']);
        }

        if (isset($save['location_image'])) {
            $this->db->set('location_image', $save['location_image']);
        }

        if ($save['offer_delivery'] === '1') {
            $this->db->set('offer_delivery', $save['offer_delivery']);
        } else {
            $this->db->set('offer_delivery', '0');
        }

        if ($save['biometric'] === '1') {
            $this->db->set('biometric', $save['biometric']);
        } else {
            $this->db->set('biometric', '0');
        }
//        echo '<pre>';
//        print_r($save);die();
        if ($save['offer_collection'] === '1') {
            $this->db->set('offer_collection', $save['offer_collection']);
        } else {
            $this->db->set('offer_collection', '0');
        }

        if (isset($save['delivery_time'])) {
            $this->db->set('delivery_time', $save['delivery_time']);
        } else {
            $this->db->set('delivery_time', '0');
        }

        if (isset($save['collection_time'])) {
            $this->db->set('collection_time', $save['collection_time']);
        } else {
            $this->db->set('collection_time', '0');
        }

        if (isset($save['last_order_time'])) {
            $this->db->set('last_order_time', $save['last_order_time']);
        } else {
            $this->db->set('last_order_time', '0');
        }

        if (isset($save['reservation_time_interval'])) {
            $this->db->set('reservation_time_interval', $save['reservation_time_interval']);
        } else {
            $this->db->set('reservation_time_interval', '0');
        }

        if (isset($save['reservation_stay_time'])) {
            $this->db->set('reservation_stay_time', $save['reservation_stay_time']);
        } else {
            $this->db->set('reservation_stay_time', '0');
        }

        if (isset($save['out_range'])) {
            $this->db->set('out_range', $save['out_range']);
        } else {
            $this->db->set('out_range', '0');
        }

        $options = array();
        if (isset($save['auto_lat_lng'])) {
            $options['auto_lat_lng'] = $save['auto_lat_lng'];
        }

        if (isset($save['opening_type'])) {
            $options['opening_hours']['opening_type'] = $save['opening_type'];
        }

        if (isset($save['daily_days'])) {
            $options['opening_hours']['daily_days'] = $save['daily_days'];
        }

        if (isset($save['daily_hours'])) {
            $options['opening_hours']['daily_hours'] = $save['daily_hours'];
        }

        if (isset($save['flexible_hours'])) {
            $options['opening_hours']['flexible_hours'] = $save['flexible_hours'];
        }

        if (isset($save['delivery_type'])) {
            $options['opening_hours']['delivery_type'] = $save['delivery_type'];
        }

        if (isset($save['delivery_days'])) {
            $options['opening_hours']['delivery_days'] = $save['delivery_days'];
        }

        if (isset($save['delivery_hours'])) {
            $options['opening_hours']['delivery_hours'] = $save['delivery_hours'];
        }

        if (isset($save['collection_type'])) {
            $options['opening_hours']['collection_type'] = $save['collection_type'];
        }

        if (isset($save['collection_days'])) {
            $options['opening_hours']['collection_days'] = $save['collection_days'];
        }

        if (isset($save['collection_hours'])) {
            $options['opening_hours']['collection_hours'] = $save['collection_hours'];
        }

        if (isset($save['future_orders'])) {
            $options['future_orders'] = $save['future_orders'];
        }

        if (isset($save['future_order_days'])) {
            $options['future_order_days'] = $save['future_order_days'];
        }

        if (isset($save['payments'])) {
            $options['payments'] = $save['payments'];
        }

        if (isset($save['delivery_areas'])) {
            $options['delivery_areas'] = $save['delivery_areas'];
        }

        if (isset($save['gallery'])) {
            $options['gallery'] = $save['gallery'];
        }

        //$this->db->set('subscription', $save['subscription_check']);
        //$this->db->set('buffet', $save['buffet']);
        if ($save['subscription_check'] === '1') {
            $this->db->set('subscription', $save['subscription_check']);
        } else {
            $this->db->set('subscription', '0');
        }
        if ($save['buffet'] === '1') {
            $this->db->set('buffet', $save['buffet']);
        } else {
            $this->db->set('buffet', '0');
        }

        if ($save['location_status'] === '1') {
            $this->db->set('location_status', $save['location_status']);
        } else {
            $this->db->set('location_status', '0');
        }
        $this->db->set('options', serialize($options));
        if (is_numeric($location_id)) {
            $action = 'updated';
            $this->db->where('location_id', $location_id);
            $query = $this->db->update('locations');
        } else {
            $action = 'added';
            $query = $this->db->insert('locations');
            $location_id = $this->db->insert_id();
        }
//        }
        if ($query === TRUE AND is_numeric($location_id)) {
            if ($location_id === $this->config->item('default_location_id')) {
                $this->Settings_model->addSetting('prefs', 'main_address', $this->getAddress($location_id), '1');
            }

            if (!empty($options['opening_hours'])) {
                $this->addOpeningHours($location_id, $options['opening_hours']);
            }

            if (!empty($save['tables'])) {
                $this->addLocationTables($location_id, $save['tables']);
            }

            if ($save['buffet']) {
                $datatmp = array(
                    'fixed_menu' => $save['fixed_menu'],
                    'repetition_mode' => $save['repetition_mode'],
                    'buffet_frequency' => $save['buffet_frequency'],
                    'daily_details' => $save['daily_details'],
                    'detail_day_one' => $save['detail_day_one'],
                    'detail_day_two' => $save['detail_day_two'],
                    'detail_day_three' => $save['detail_day_three'],
                    'detail_day_four' => $save['detail_day_four'],
                    'detail_day_five' => $save['detail_day_five'],
                    'detail_day_six' => $save['detail_day_six'],
                    'detail_day_seven' => $save['detail_day_seven'],
                    'detail_month_1' => $save['detail_month_1'],
                    'detail_month_2' => $save['detail_month_2'],
                    'detail_month_3' => $save['detail_month_3'],
                    'detail_month_4' => $save['detail_month_4'],
                    'detail_month_5' => $save['detail_month_5'],
                    'detail_month_6' => $save['detail_month_6'],
                    'detail_month_7' => $save['detail_month_7'],
                    'detail_month_8' => $save['detail_month_8'],
                    'detail_month_9' => $save['detail_month_9'],
                    'detail_month_10' => $save['detail_month_10'],
                    'detail_month_11' => $save['detail_month_11'],
                    'detail_month_12' => $save['detail_month_12'],
                    'detail_month_13' => $save['detail_month_13'],
                    'detail_month_14' => $save['detail_month_14'],
                    'detail_month_15' => $save['detail_month_15'],
                    'detail_month_16' => $save['detail_month_16'],
                    'detail_month_17' => $save['detail_month_17'],
                    'detail_month_18' => $save['detail_month_18'],
                    'detail_month_19' => $save['detail_month_19'],
                    'detail_month_20' => $save['detail_month_20'],
                    'detail_month_21' => $save['detail_month_21'],
                    'detail_month_22' => $save['detail_month_22'],
                    'detail_month_23' => $save['detail_month_23'],
                    'detail_month_24' => $save['detail_month_24'],
                    'detail_month_25' => $save['detail_month_25'],
                    'detail_month_26' => $save['detail_month_26'],
                    'detail_month_27' => $save['detail_month_27'],
                    'detail_month_28' => $save['detail_month_28'],
                    'detail_month_29' => $save['detail_month_29'],
                    'detail_month_30' => $save['detail_month_30'],
                    'detail_month_31' => $save['detail_month_31'],
                );
                $this->updadeBuffet($location_id, $datatmp);
            }

            if ($save['subscription_check']) {
                if (isset($save['subscription'])) {
                    $this->saveSubscriptions($location_id, $save['subscription']);
                }

                $dataCG = array(
                    'group_name' => 'Subscription Specific Users',
                    'description' => '',
                    'approval' => '0',
                );
                $this->saveCustomerGroup($location_id, $dataCG);
            }

            $this->updateSubtractAssociations($location_id, $save['out_range']);

            if (!empty($save['permalink'])) {
                $this->permalink->savePermalink('local', $save['permalink'], 'location_id=' . $location_id);
            }

            return $location_id;
        }
    }

    public function saveSubscriptions($location_id, $subscriptions = array()) {
        if (is_numeric($location_id) AND ! empty($subscriptions)) {
            $this->db->where('location_id', $location_id);
            $this->db->delete('location_subscription');

            foreach ($subscriptions as $key => $subscription) {
                if (!empty($subscription['subscription_name'])) {
                    $this->updadeSubscription($location_id, $subscription);
                }
            }
        }
    }

    public function saveCustomerGroup($location_id, $save = array()) {
        if (empty($save))
            return FALSE;

        $this->db->where_in('location_id', $location_id);
        $this->db->where('group_name', 'Subscription Specific Users');
        $this->db->delete('customer_groups');

        if (isset($save['group_name'])) {
            $this->db->set('group_name', $save['group_name']);
        }

        if (isset($save['description'])) {
            $this->db->set('description', $save['description']);
        }

        if (isset($save['approval']) AND $save['approval'] === '1') {
            $this->db->set('approval', $save['approval']);
        } else {
            $this->db->set('approval', '0');
        }

        $this->db->set('location_id', $location_id);
        $query = $this->db->insert('customer_groups');
    }

    public function updadeSubscription($location_id, $datatmp = array()) {

        // $this->db->where_in('location_id', $location_id);
        // $this->db->delete('location_subscription');

        if (isset($datatmp['location_subscription_id'])) {
            $this->db->set('location_subscription_id', $datatmp['location_subscription_id']);
        }

        if (isset($datatmp['subscription_name'])) {
            $this->db->set('subscription_name', $datatmp['subscription_name']);
        }

        if (isset($datatmp['subscription_value'])) {
            $this->db->set('subscription_value', $datatmp['subscription_value']);
        }

        if (isset($datatmp['meals_per_day'])) {
            $this->db->set('meals_per_day', $datatmp['meals_per_day']);
        }

        if (isset($datatmp['subscription_action'])) {
            $this->db->set('subscription_action', $datatmp['subscription_action']);
        }

        if (isset($datatmp['extra_days'])) {
            $this->db->set('extra_days', $datatmp['extra_days']);
        }

        if (isset($datatmp['cycle'])) {
            $this->db->set('cycle', $datatmp['cycle']);
        }

        if (isset($datatmp['subscription_detail'])) {
            $this->db->set('subscription_detail', $datatmp['subscription_detail']);
        }

        $this->db->set('location_id', $location_id);
        $query = $this->db->insert('location_subscription');
    }

    public function updadeBuffet($location_id, $datatmp = array()) {

        $this->db->where_in('location_id', $location_id);
        $this->db->delete('location_buffet');

        if (isset($datatmp['fixed_menu'])) {
            $this->db->set('fixed_menu', $datatmp['fixed_menu']);
        }

        if (isset($datatmp['repetition_mode'])) {
            $this->db->set('repetition_mode', $datatmp['repetition_mode']);
        }

        if (isset($datatmp['buffet_frequency'])) {
            $this->db->set('buffet_frequency', $datatmp['buffet_frequency']);
        }

        if ($datatmp['buffet_frequency'] == 'daily') {
            $this->db->set('buffet_options', $datatmp['daily_details']);
        } elseif ($datatmp['buffet_frequency'] == 'weekly') {
            $options = "";
            $options .= $datatmp['detail_day_one'] . "-";
            $options .= $datatmp['detail_day_two'] . "-";
            $options .= $datatmp['detail_day_three'] . "-";
            $options .= $datatmp['detail_day_four'] . "-";
            $options .= $datatmp['detail_day_five'] . "-";
            $options .= $datatmp['detail_day_six'] . "-";
            $options .= $datatmp['detail_day_seven'];
            $this->db->set('buffet_options', $options);
        } elseif ($datatmp['buffet_frequency'] == 'monthly') {
            $options = "";
            $options .= $datatmp['detail_month_1'] . "-";
            $options .= $datatmp['detail_month_2'] . "-";
            $options .= $datatmp['detail_month_3'] . "-";
            $options .= $datatmp['detail_month_4'] . "-";
            $options .= $datatmp['detail_month_5'] . "-";
            $options .= $datatmp['detail_month_6'] . "-";
            $options .= $datatmp['detail_month_7'] . "-";
            $options .= $datatmp['detail_month_8'] . "-";
            $options .= $datatmp['detail_month_9'] . "-";
            $options .= $datatmp['detail_month_10'] . "-";
            $options .= $datatmp['detail_month_11'] . "-";
            $options .= $datatmp['detail_month_12'] . "-";
            $options .= $datatmp['detail_month_13'] . "-";
            $options .= $datatmp['detail_month_14'] . "-";
            $options .= $datatmp['detail_month_15'] . "-";
            $options .= $datatmp['detail_month_16'] . "-";
            $options .= $datatmp['detail_month_17'] . "-";
            $options .= $datatmp['detail_month_18'] . "-";
            $options .= $datatmp['detail_month_19'] . "-";
            $options .= $datatmp['detail_month_20'] . "-";
            $options .= $datatmp['detail_month_21'] . "-";
            $options .= $datatmp['detail_month_22'] . "-";
            $options .= $datatmp['detail_month_23'] . "-";
            $options .= $datatmp['detail_month_24'] . "-";
            $options .= $datatmp['detail_month_25'] . "-";
            $options .= $datatmp['detail_month_26'] . "-";
            $options .= $datatmp['detail_month_27'] . "-";
            $options .= $datatmp['detail_month_28'] . "-";
            $options .= $datatmp['detail_month_29'] . "-";
            $options .= $datatmp['detail_month_30'] . "-";
            $options .= $datatmp['detail_month_31'];
            $this->db->set('buffet_options', $options);
        }

        $this->db->set('location_id', $location_id);
        $query = $this->db->insert('location_buffet');
    }

    public function updateSubtractAssociations($location_id, $out_range) {
        $associations = $this->getLocationMenu($location_id);
        foreach ($associations as $association) {
            if ($out_range == 1) {
                $this->updateAssocSubtract($association['menu_id']);
            }
            if ($out_range == 0) {
                $this->updateDeassocSubtract($association['menu_id']);
            }
        }
    }

    public function getLocationMenu($location_id) {
        $this->db->from('menus');
        $this->db->where('menu_location', $location_id);

        $query = $this->db->get();

        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
    }

    public function updateAssocSubtract($menu_id) {
        $this->db->set('substract_option', '0');
        $this->db->where('menu_id', $menu_id);
        $this->db->update('items_menu_association');
    }

    public function updateDeassocSubtract($menu_id) {
        $this->db->set('substract_option', '1');
        $this->db->where('menu_id', $menu_id);
        $this->db->update('items_menu_association');
    }

    public function addOpeningHours($location_id, $data = array()) {
        $this->db->where('location_id', $location_id);
        $this->db->delete('working_hours');

        $hours = array();

        if (!empty($data['opening_type'])) {
            if ($data['opening_type'] === '24_7') {
                for ($day = 0; $day <= 6; $day ++) {
                    $hours['opening'][] = array('day' => $day, 'open' => '00:00', 'close' => '23:59', 'status' => '1');
                }
            } else if ($data['opening_type'] === 'daily') {
                for ($day = 0; $day <= 6; $day ++) {
                    if (!empty($data['daily_days']) AND in_array($day, $data['daily_days'])) {
                        $hours['opening'][] = array('day' => $day, 'open' => $data['daily_hours']['open'], 'close' => $data['daily_hours']['close'], 'status' => '1');
                    } else {
                        $hours['opening'][] = array('day' => $day, 'open' => $data['daily_hours']['open'], 'close' => $data['daily_hours']['close'], 'status' => '0');
                    }
                }
            } else if ($data['opening_type'] === 'flexible' AND ! empty($data['flexible_hours'])) {
                $hours['opening'] = $data['flexible_hours'];
            }

            $hours['delivery'] = empty($data['delivery_type']) ? $hours['opening'] : $this->_createWorkingHours('delivery', $data);
            $hours['collection'] = empty($data['collection_type']) ? $hours['opening'] : $this->_createWorkingHours('collection', $data);

            if (is_numeric($location_id) AND ! empty($hours) AND is_array($hours)) {
                foreach ($hours as $type => $hr) {
                    foreach ($hr as $hour) {
                        $this->db->set('location_id', $location_id);
                        $this->db->set('weekday', $hour['day']);
                        $this->db->set('type', $type);
                        $this->db->set('opening_time', mdate('%H:%i', strtotime($hour['open'])));
                        $this->db->set('closing_time', mdate('%H:%i', strtotime($hour['close'])));
                        $this->db->set('status', $hour['status']);
                        $this->db->insert('working_hours');
                    }
                }
            }
        }

        if ($this->db->affected_rows() > 0) {
            return TRUE;
        }
    }

    public function addLocationTables($location_id, $tables = array()) {
        $this->db->where('location_id', $location_id);
        $this->db->delete('location_tables');

        if (is_array($tables) && !empty($tables)) {
            foreach ($tables as $key => $value) {

                $this->db->set('location_id', $location_id);
                $this->db->set('table_id', $value);
                $this->db->insert('location_tables');
            }
        }

        if ($this->db->affected_rows() > 0) {
            return TRUE;
        }
    }

    public function deleteLocation($location_id) {
        if (is_numeric($location_id))
            $location_id = array($location_id);

        if (!empty($location_id) AND ctype_digit(implode('', $location_id))) {
            $this->db->where_in('location_id', $location_id);
            $this->db->delete('locations');

            if (($affected_rows = $this->db->affected_rows()) > 0) {
                $this->db->where_in('location_id', $location_id);
                $this->db->delete('location_tables');

                $this->db->where_in('location_id', $location_id);
                $this->db->delete('working_hours');

                $this->db->where_in('location_id', $location_id);
                $this->db->delete('location_buffet');

                $this->db->where_in('location_id', $location_id);
                $this->db->delete('location_subscription');

                $this->db->where_in('location_id', $location_id);
                $this->db->delete('customer_groups');

                $this->db->where_in('item_location', $location_id);
                $this->db->delete('items');

                $this->db->where_in('menu_location', $location_id);
                $this->db->delete('menus');

                $this->db->where_in('location_id', $location_id);
                $this->db->delete('orders');

                foreach ($location_id as $id) {
                    $this->permalink->deletePermalink('local', 'location_id=' . $id);
                }

                return $affected_rows;
            }
        }
    }

    public function validateLocation($location_id) {
        if (!empty($location_id)) {
            $this->db->from('locations');
            $this->db->where('location_id', $location_id);

            $query = $this->db->get();

            if ($query->num_rows() > 0) {
                return TRUE;
            }
        }

        return FALSE;
    }

    private function _createWorkingHours($type, $data) {
        $days = (empty($data["{$type}_days"])) ? array() : $data["{$type}_days"];
        $hours = (empty($data["{$type}_hours"])) ? array('open' => '00:00', 'close' => '23:59') : $data["{$type}_hours"];

        $working_hours = array();

        for ($day = 0; $day <= 6; $day ++) {
            $status = in_array($day, $days) ? '1' : '0';
            $working_hours[] = array('day' => $day, 'open' => $hours['open'], 'close' => $hours['close'], 'status' => $status);
        }

        return $working_hours;
    }

}

/* End of file locations_model.php */
/* Location: ./system/smartresto/models/locations_model.php */