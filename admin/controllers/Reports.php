<?php if ( ! defined('BASEPATH')) exit('No direct access allowed');

class Reports extends Admin_Controller {

    public function __construct() {
		parent::__construct(); //  calls the constructor

        $this->user->restrict('Admin.Reports');
        $this->load->library('codebird');
        // $this->load->library('TwitterAPIExchange');
        $this->lang->load('reports');
	}

	public function index() {
		
        $this->template->setTitle($this->lang->line('text_title'));
        $this->template->setHeading($this->lang->line('text_heading'));

        require_once(ROOTPATH . "system/tastyigniter/third_party/TwitterAPIExchange.php");
        $CONSUMER_KEY = 'zCj2JnyPzAESiesSwoGxeK2V0';
		$CONSUMER_SECRET = 'KHBIiVdVB0eK2818lWVk1ltdg2tcmMRQ7JKTESyHXh8eos4LhM';
		$ACCESS_TOKEN = '778956057590640641-rdnIdWtQsUsIqbUTuSoZ5uVssB71vnv';
		$ACCESS_TOKEN_SECRET = 'wDQcciO4LN4peqBLO7ubfQ0Jf8zbUGAe6HMLhZCAKlTx8';
		$settings = array(
			'oauth_access_token' => $ACCESS_TOKEN,
			'oauth_access_token_secret' => $ACCESS_TOKEN_SECRET,
			'consumer_key' => $CONSUMER_KEY,
			'consumer_secret' => $CONSUMER_SECRET
		);
		$url = "https://api.twitter.com/1.1/statuses/user_timeline.json";
		$requestMethod = "GET";
		if (isset($_GET['user']))  {
			$user = preg_replace("/[^A-Za-z0-9_]/", '', $_GET['user']);
		}  else {
			$user  = "safari05mupe";
		}
		if (isset($_GET['count']) && is_numeric($_GET['count'])) {
			$count = $_GET['count'];
		} else {
			$count = 100;
		}
		$tweets = 0;
		$getfield = "?screen_name=$user&count=$count";
		$twitter = new TwitterAPIExchange($settings);
		$data['string'] = json_decode($twitter->setGetfield($getfield)->buildOauth($url, $requestMethod)->performRequest(),$assoc = TRUE);

        $data['twitter_folowers'] = $this->twitter_followers_count('safari05mupe');
        $data['twitter_friends'] = $this->twitter_friends_count('safari05mupe');
        $data['tweets'] = $this->twitter_tweets('safari05mupe');

		$this->template->render('report_social_media', $data);
	}

	function twitter_followers_count( $user ) {
     	$CONSUMER_KEY = 'zCj2JnyPzAESiesSwoGxeK2V0';
		$CONSUMER_SECRET = 'KHBIiVdVB0eK2818lWVk1ltdg2tcmMRQ7JKTESyHXh8eos4LhM';
		$ACCESS_TOKEN = '778956057590640641-rdnIdWtQsUsIqbUTuSoZ5uVssB71vnv';
		$ACCESS_TOKEN_SECRET = 'wDQcciO4LN4peqBLO7ubfQ0Jf8zbUGAe6HMLhZCAKlTx8';

		require_once(ROOTPATH . "system/tastyigniter/third_party/TwitterAPIExchange.php");
		
		/** Set access tokens here - see: https://dev.twitter.com/apps/ **/
		$settings = array(
			'oauth_access_token'        => $ACCESS_TOKEN,
			'oauth_access_token_secret' => $ACCESS_TOKEN_SECRET,
			'consumer_key'              => $CONSUMER_KEY,
			'consumer_secret'           => $CONSUMER_SECRET
		);
					 
		$url = 'https://api.twitter.com/1.1/users/show.json';
		$getfield = '?screen_name=' . $user;
		$requestMethod = 'GET';
		$twitter = new TwitterAPIExchange( $settings );
		$follow_count = $twitter->setGetfield( $getfield )
			->buildOauth( $url, $requestMethod )
			->performRequest();
		$get_count = json_decode( $follow_count, true );
					     
		return $get_count['followers_count'];
					     
	}

	function twitter_friends_count( $user ) {
     	$CONSUMER_KEY = 'zCj2JnyPzAESiesSwoGxeK2V0';
		$CONSUMER_SECRET = 'KHBIiVdVB0eK2818lWVk1ltdg2tcmMRQ7JKTESyHXh8eos4LhM';
		$ACCESS_TOKEN = '778956057590640641-rdnIdWtQsUsIqbUTuSoZ5uVssB71vnv';
		$ACCESS_TOKEN_SECRET = 'wDQcciO4LN4peqBLO7ubfQ0Jf8zbUGAe6HMLhZCAKlTx8';
		require_once(ROOTPATH . "system/tastyigniter/third_party/TwitterAPIExchange.php");
					         
		/** Set access tokens here - see: https://dev.twitter.com/apps/ **/
		$settings = array(
			'oauth_access_token'        => $ACCESS_TOKEN,
			'oauth_access_token_secret' => $ACCESS_TOKEN_SECRET,
			'consumer_key'              => $CONSUMER_KEY,
			'consumer_secret'           => $CONSUMER_SECRET
		);
					 
		$url = 'https://api.twitter.com/1.1/users/show.json';
		$getfield = '?screen_name=' . $user;
		$requestMethod = 'GET';
		$twitter = new TwitterAPIExchange( $settings );
		$follow_count = $twitter->setGetfield( $getfield )
					->buildOauth( $url, $requestMethod )
					->performRequest();
		$get_count = json_decode( $follow_count, true );
					     
		return $get_count['friends_count'];
					     
	}

	function twitter_tweets( $user ) {
     	$CONSUMER_KEY = 'zCj2JnyPzAESiesSwoGxeK2V0';
		$CONSUMER_SECRET = 'KHBIiVdVB0eK2818lWVk1ltdg2tcmMRQ7JKTESyHXh8eos4LhM';
		$ACCESS_TOKEN = '778956057590640641-rdnIdWtQsUsIqbUTuSoZ5uVssB71vnv';
		$ACCESS_TOKEN_SECRET = 'wDQcciO4LN4peqBLO7ubfQ0Jf8zbUGAe6HMLhZCAKlTx8';
		require_once(ROOTPATH . "system/tastyigniter/third_party/TwitterAPIExchange.php");
					         
		/** Set access tokens here - see: https://dev.twitter.com/apps/ **/
		$settings = array(
			'oauth_access_token'        => $ACCESS_TOKEN,
			'oauth_access_token_secret' => $ACCESS_TOKEN_SECRET,
			'consumer_key'              => $CONSUMER_KEY,
			'consumer_secret'           => $CONSUMER_SECRET
		);
					 
		$count = 100;
		$url = "https://api.twitter.com/1.1/statuses/user_timeline.json";
		$getfield = "?screen_name=$user&count=$count";
		$requestMethod = 'GET';
		$tweets = 0;
					
		$twitter = new TwitterAPIExchange( $settings );
		$string = json_decode($twitter->setGetfield($getfield)->buildOauth($url, $requestMethod)->performRequest(),$assoc = TRUE);
		
		foreach($string as $items){
			$tweets++;
		}
					     
		return $tweets;
					     
	}
	
}

/* End of file reports.php */
/* Location: ./admin/controllers/reports.php */