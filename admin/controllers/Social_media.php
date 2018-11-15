<?php if ( ! defined('BASEPATH')) exit('No direct access allowed');

class Social_media extends Admin_Controller {

    public function __construct() {
		parent::__construct(); //  calls the constructor

        $this->user->restrict('Admin.Reviews');

        $this->load->model('Social_media_model'); // load the reviews model

        $this->lang->load('social_media');
	}

	public function index() {
		
        $this->template->setTitle($this->lang->line('text_title'));
        $this->template->setHeading($this->lang->line('text_heading'));

        $this->load->model('Image_tool_model');
		$data['site_logo'] 		= $this->Image_tool_model->resize($this->config->item('site_logo'));

		$results['responsible'] = $this->user->getStaffId();
        $data['social_media'] = $this->Social_media_model->getAll($results['responsible']);

        // $rec=0;
        // foreach ($social_media as $socialmedia) {
        // 	$data[$rec]['is_social_activated'] = $socialmedia->is_social_activated;
        // 	$data[$rec]['label_min'] = $socialmedia->label_min;
        // 	$rec++;
        // }
        // print_r($data);

		$this->template->render('social_media', $data);
	}

	public function addCredentials(){

		if($this->input->post()){

			$social = $this->uri->rsegment('3');

			$data['app_id'] = $this->input->post($social.'_app_id');
			$data['app_secret'] = $this->input->post($social.'_app_secret');
			$data['access_token'] = $this->input->post($social.'_access_token');
			$data['access_token_secret'] = $this->input->post($social.'_access_token_secret');
			$data['username'] = $this->input->post($social.'_username');
			$data['for'] = $this->input->post($social.'_for');
			$data['label'] = $this->input->post($social.'_label');

			$results['sender_id'] = $this->user->getStaffId();

			$exist = $this->Social_media_model->getCredentials($data['for']);
			if(empty($exist)):
				
				$additional_data = array(
	                'app_id' => $data['app_id'],
	                'app_secret' => $data['app_secret'],
	                'access_token' => $data['access_token'],
	                'access_token_secret' => $data['access_token_secret'],
	                'is_responsible' => $results['sender_id'],
	                'credential_for' => $data['for'],
	                'label' => $data['label'],
	                'label_min' => strtolower($data['label']),
	                'is_social_activated' => '1'
	           	);

				if($this->Social_media_model->add_credentials('social_credentials', $additional_data)){
					# give a statement
					// $socialdata['data'] = $this->Social_media_model->getCredentials($for);
				}

				header('Content-Type: application/json');
				echo json_encode($data);
			else:
				$this->alert->set('warning', sprintf($this->lang->line('alert_error_nothing'), "You have already Twitter credentials"));
			endif;

		}

	}

	public function getCredentials(){
		$for = $this->uri->rsegment('3');

		$socialdata['data'] = $this->Social_media_model->getCredentials($for);

        header('Content-Type: application/json');
        echo json_encode($socialdata);
	}

	public function deleteCredentials(){

		$for = $this->uri->rsegment('3');
		if (!empty($for)) {
            $this->db->delete('social_credentials', array('credential_for' => $for));
        }

	}

	private function validateForm($for) {
		$this->form_validation->set_rules($for.'_app_id', 'App ID', 'trim|required|alpha');
		$this->form_validation->set_rules($for.'_app_secret', 'App Secret', 'trim|required|integer');

		if ($this->form_validation->run() === TRUE) {
			return TRUE;
		} else {
			return FALSE;
		}
	}

	
}

/* End of file social_media.php */
/* Location: ./admin/controllers/social_media.php */