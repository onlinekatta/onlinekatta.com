<?php if ( ! defined('BASEPATH')) exit('No direct access allowed');

class Social_campain extends Admin_Controller {

    public function __construct() {
		parent::__construct(); //  calls the constructor

        $this->load->library('pagination');
        $this->load->library('codebird');

        $this->load->model('Messages_model');
        $this->load->model('Staffs_model');
        $this->load->model('Social_media_model');
        $this->load->model('Image_tool_model');

        $this->lang->load('social_campaign');
	}

	public function index() {
		
        $this->template->setTitle($this->lang->line('text_title'));
        $this->template->setHeading($this->lang->line('text_heading'));

        $social_info = $this->Social_media_model->getDraftMessage((int)$this->input->get('id'));
        if ($social_info) {
            $social_id = $social_info['social_id'];
            $data['_action'] = site_url('social_campain/draft?id=' . $social_id);
        } else {
            $social_id = 0;
            $data['_action'] = site_url('social_campain');
        }

        if ($this->input->get('id') AND !$social_info) {
            redirect('social_campain');
        }

        // if ($this->input->post() AND $social_id = $this->_saveMessage()) {
        //     if ($this->input->post('save_as_draft') === '1') {
        //         redirect('social_campain/draft?id=' . $social_id);
        //     }

        //     redirect('social_campain');
        // }

        $this->load->model('Image_tool_model');
		$data['site_logo'] 		= $this->Image_tool_model->resize($this->config->item('site_logo'));

		$results['responsible'] = $this->user->getStaffId();
        $data['social_media'] = $this->Social_media_model->getAll($results['responsible']);

        $data['folders'] = array(
            'draft'   => array('title' => $this->lang->line('text_draft'), 'icon' => 'fa-file-text-o', 'badge' => '', 'url' => site_url('social_campain/draft')),
            'published'    => array('title' => $this->lang->line('text_published'), 'icon' => 'fa-share-alt', 'badge' => '', 'url' => site_url('social_campain/published')),
            'all'     => array('title' => $this->lang->line('text_all'), 'icon' => 'fa-briefcase', 'badge' => '', 'url' => site_url('social_campain/all'))
        );
        $error = 0;

		if ($this->input->post()) {
			if(!empty($this->input->post('socials'))):
				foreach ($this->input->post('socials') as $social) {
					if ($social === "twitter") {

                        $title = $this->input->post("title");
						$feed = $this->input->post("feed");
						$social_path = IMAGEPATH . 'data/social';

						if (!is_dir($social_path)) {
							mkdir($social_path, 0777, TRUE);
						}

						$social_media = $this->Social_media_model->getAll($this->user->getStaffId());
                		foreach ($social_media as $socialmedia) {

		                	// $credentials_for = "tter";
		                	// $socialmedia = $this->Social_media_model->getCredentials($credentials_for);
		                	if ($socialmedia->label_min === 'twitter') {

			                	define('CONSUMER_KEY', $socialmedia->app_id);
			                    // echo "appid::::".$socialmedia->app_id;
			                    define('CONSUMER_SECRET', $socialmedia->app_secret);
			                     // echo "appid::::".$socialmedia->app_secret;

			                    $access_token = $socialmedia->access_token;
			                     // echo "appid::::".$socialmedia->access_token;
			                    $access_token_secret = $socialmedia->access_token_secret;
			                     // echo "appid::::".$socialmedia->access_token_secret;

			                    $this->codebird->setConsumerKey(CONSUMER_KEY, CONSUMER_SECRET);
			                    $cb = $this->codebird->getInstance();
			                    $cb->setToken($access_token, $access_token_secret);
			                             
			                    $params = array(
			                        'status' => $feed,
			                        'media[]' => $_FILES["file-profile"]["tmp_name"],
			                        // 'media[]' => $this->Image_tool_model->resize('data/no_photo.png'),
			                    );
			                    $reply = $cb->statuses_update($params);
			                    $reply = $cb->statuses_updateWithMedia($params);

			                  
			                    $feedStatus = $this->uploadImageFile($social_path, 'file-profile', 'png|jpg|jpeg|JPEG|JPG|bmp|gif');

			                    $reply = 1;
			                    if($reply){
									$additional_data = array(
                                        'title' => $title,
						                'feed' => $feed,
						                'sender' => $this->user->getStaffId(),
						                'image' =>  $feedStatus,
						                'social_platform' => $social,
						                'status' => '1',
						                'posted_at' => mdate('%Y-%m-%d %H:%i:%s', time())
						           	);
						           	$this->Social_media_model->add_credentials('social_media_data', $additional_data);
			                    }else{
			                    	$error++;
			                    }
			                }
		                }
	                    
	           		}

	           		if($error == 0){
	                	$this->alert->set('success', sprintf($this->lang->line('alert_success'), 'Post sent '));
	           		}else{
	           			$this->alert->set('warning', sprintf($this->lang->line('alert_error_nothing'), "There might be some misconfigurations with social media"));
	           		}
	            }
	        else:
	        	 $this->alert->set('warning', sprintf($this->lang->line('alert_error_nothing'), "No social media checked"));
	        endif;
		}

		$this->template->render('social_campain', $data);
	}

	public function all() {
        $this->user->restrict('Admin.Messages');

        $filter = array();
        $filter['filter_folder'] = $data['filter_folder'] = 'all';
        $data['page_uri'] = 'social_campain/all';

        $this->template->setTitle('Social Campaign');
        $this->template->setHeading('Social Campaign');
        $this->template->setButton($this->lang->line('button_social'), array('class' => 'btn btn-primary', 'href' => site_url('social_campain')));

        // $data = $this->getList($data, $filter);
        $data['folders'] = array(
            'draft'   => array('title' => $this->lang->line('text_draft'), 'icon' => 'fa-file-text-o', 'badge' => '', 'url' => site_url('social_campain/draft')),
            'published'    => array('title' => $this->lang->line('text_published'), 'icon' => 'fa-share-alt', 'badge' => '', 'url' => site_url('social_campain/published')),
            'all'     => array('title' => $this->lang->line('text_all'), 'icon' => 'fa-briefcase', 'badge' => '', 'url' => site_url('social_campain/all'))
        );

        $data['shared_messages'] = $this->Social_media_model->getAllsocial();

        $this->template->render('social_campaign_all', $data);
    }

    public function draft() {
        $this->user->restrict('Admin.Messages');

        $filter = array();
        $filter['filter_folder'] = $data['filter_folder'] = 'draft';
        $data['page_uri'] = 'social_campain/draft';

        $this->template->setTitle('Social Campaign');
        $this->template->setHeading('Social Campaign');
        $this->template->setButton($this->lang->line('button_social'), array('class' => 'btn btn-primary', 'href' => site_url('social_campain')));

        $data['folders'] = array(
            'draft'   => array('title' => $this->lang->line('text_draft'), 'icon' => 'fa-file-text-o', 'badge' => '', 'url' => site_url('social_campain/draft')),
            'published'    => array('title' => $this->lang->line('text_published'), 'icon' => 'fa-share-alt', 'badge' => '', 'url' => site_url('social_campain/published')),
            'all'     => array('title' => $this->lang->line('text_all'), 'icon' => 'fa-briefcase', 'badge' => '', 'url' => site_url('social_campain/all'))
        );

        $data['shared_messages'] = $this->Social_media_model->getAllDraft();

        $this->template->render('social_campaign_draft', $data);
    }

    public function published() {
        $filter = array();
        $filter['filter_folder'] = $data['filter_folder'] = 'published';
        $data['page_uri'] = 'social_campain/published';

        $this->template->setTitle('Social Campaign');
        $this->template->setHeading('Social Campaign');
        $this->template->setButton($this->lang->line('button_social'), array('class' => 'btn btn-primary', 'href' => site_url('social_campain')));

        $data['folders'] = array(
            'draft'   => array('title' => $this->lang->line('text_draft'), 'icon' => 'fa-file-text-o', 'badge' => '', 'url' => site_url('social_campain/draft')),
            'published'    => array('title' => $this->lang->line('text_published'), 'icon' => 'fa-share-alt', 'badge' => '', 'url' => site_url('social_campain/published')),
            'all'     => array('title' => $this->lang->line('text_all'), 'icon' => 'fa-briefcase', 'badge' => '', 'url' => site_url('social_campain/all'))
        );

        $data['shared_messages'] = $this->Social_media_model->getAllShared();
        // print_r($data['shared_messages']);

        $this->template->render('social_campaign_shared', $data);
    }

    public function view() {
        $this->user->restrict('Admin.Messages');

        $filter = array();
        $filter['filter_folder'] = $data['filter_folder'] = 'all';
        $data['page_uri'] = 'social_campain/all';

        $this->template->setTitle('Social Campaign');
        $this->template->setHeading('Social Campaign');
        $this->template->setButton($this->lang->line('button_social'), array('class' => 'btn btn-primary', 'href' => site_url('social_campain')));

        // $data = $this->getList($data, $filter);
        $data['folders'] = array(
            'draft'   => array('title' => $this->lang->line('text_draft'), 'icon' => 'fa-file-text-o', 'badge' => '', 'url' => site_url('social_campain/draft')),
            'published'    => array('title' => $this->lang->line('text_published'), 'icon' => 'fa-share-alt', 'badge' => '', 'url' => site_url('social_campain/published')),
            'all'     => array('title' => $this->lang->line('text_all'), 'icon' => 'fa-briefcase', 'badge' => '', 'url' => site_url('social_campain/all'))
        );

        $urlString = $this->uri->segment(3);
        $paraChunks = explode("-", $urlString);
        $social_id = $paraChunks[0];
        $data['shared_message'] = $this->Social_media_model->getMessage($social_id);

        $this->template->render('social_campaign_view', $data);
    }

    public function edit() {
        $urlString = $this->uri->segment(3);
        $paraChunks = explode("-", $urlString);

        $this->template->setTitle('Social Campaign');
        $this->template->setHeading('Social Campaign');

        $this->load->model('Image_tool_model');
        $data['site_logo']      = $this->Image_tool_model->resize($this->config->item('site_logo'));

        $results['responsible'] = $this->user->getStaffId();
        $data['social_media'] = $this->Social_media_model->getAll($results['responsible']);

        $data['folders'] = array(
            'draft'   => array('title' => $this->lang->line('text_draft'), 'icon' => 'fa-file-text-o', 'badge' => '', 'url' => site_url('social_campain/draft')),
            'published'    => array('title' => $this->lang->line('text_published'), 'icon' => 'fa-share-alt', 'badge' => '', 'url' => site_url('social_campain/published')),
            'all'     => array('title' => $this->lang->line('text_all'), 'icon' => 'fa-briefcase', 'badge' => '', 'url' => site_url('social_campain/all'))
        );

        $data['draft_info'] = $this->Social_media_model->getDraftMessage((int)$paraChunks[0]);
        // print_r($data['draft_info']);

        $this->template->render('social_campain', $data);

    }

    public function delete() {
        $urlString = $this->uri->segment(3);
        $paraChunks = explode("-", $urlString);

        if ($this->Social_media_model->deleteMessage($paraChunks[0], $this->user->getStaffId())) {
            $this->alert->set('warning', sprintf($this->lang->line('alert_delete'), 'Draft deleted '));
        }

        redirect('social_campain/draft');
    }

    private function _saveMessage() {
        if ($this->validateForm() === TRUE) {
            $save_type = (is_numeric($this->input->post('save_as_draft'))) ? $this->lang->line('text_saved_to_draft') : $this->lang->line('text_sent');

            if ($message_id = $this->Social_media_model->saveMessage($this->input->get('id'), $this->input->post())) {

                $this->alert->set('success', sprintf($this->lang->line('alert_success'), 'Message drafted' . $save_type));
            } else {
                $this->alert->set('warning', sprintf($this->lang->line('alert_error_nothing'), $save_type));
            }

            return $message_id;
        }
    }

    private function _updateMessageState($state = '', $staff_id = '', $folder = '', $display_error = TRUE) {
        if (is_numeric($staff_id)) {
            if ($state === 'unread') {
                $alert = $this->lang->line('alert_mark_as_unread');
            } else if ($state === 'read') {
                $alert = $this->lang->line('alert_mark_as_read');
            } else if ($state === 'restore') {
                $alert = $this->lang->line('alert_move_to_inbox');
            } else if ($state === 'archive') {
                $alert = $this->lang->line('alert_move_to_archive');
            } else if ($state === 'trash') {
                $alert = $this->lang->line('alert_move_to_trash');
            }

            if ($state !== '' AND $this->input->post('delete')) {
                if ($folder === 'draft') {
                    $this->Messages_model->deleteMessage($this->input->post('delete'), $staff_id);
                } else {
                    $this->Messages_model->updateState($this->input->post('delete'), $staff_id, $state, $folder);
                }

                $num = count($this->input->post('delete'));
                if ($num > 0) {
                    $alert_msg = ($num == 1) ? 'Message ' . $alert : $num . ' messages ' . $alert;

                    if ($display_error === TRUE) $this->alert->set('success', $alert_msg);

                    return TRUE;
                }
            }
        }

        return FALSE;
    }

	private function validateForm() {
        $this->form_validation->set_rules('title', 'lang:label_to', 'xss_clean|trim|required|min_length[2]|max_length[128]');
        $this->form_validation->set_rules('feed', 'lang:label_body', 'required|min_length[3]');

        if ($this->form_validation->run() === TRUE) {
            return TRUE;
        } else {
            return FALSE;
        }
    }

    function uploadImageFile($path, $controllName, $allowedTypes)
    {
        // $this->load->helper('form');
        // $config['upload_path'] = $path;
        // $config['allowed_types'] = $allowedTypes;
        // $this->load->library('upload', $config);
        // $this->upload->initialize($config);
        // $this->upload->set_allowed_types('*');
        
       	$temp = explode(".", $_FILES[$controllName]["name"]);
        $newfilename = rand(2,5).round(microtime(true)) . '.' . end($temp);
        move_uploaded_file($_FILES[$controllName]["tmp_name"], $path."/".$newfilename);
        
        return "data/social/".$newfilename;

    }
	
}

/* End of file social_media.php */
/* Location: ./admin/controllers/social_media.php */