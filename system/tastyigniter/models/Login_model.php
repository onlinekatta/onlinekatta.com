<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Login_model extends TI_Model {

    function __construct() {
        parent::__construct();
        $this->load->database();
    }
}

/* End of file customers_model.php */
/* Location: ./system/smartresto/models/customers_model.php */
