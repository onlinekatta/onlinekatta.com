<?php
if(isset($_GET['bid']))
{
	
	 $bid = $_GET['bid'];
	 $cid = $_GET['cid'];
							
	$url = "localhost/testing/fingerprint/process.php?bid=$bid&cid=$cid";
      $fields = array(
	'bid' => $bid,
	'cid' => $cid
);
$ch = curl_init();

//set the url, number of POST vars, POST data
curl_setopt($ch,CURLOPT_URL, $url);
curl_setopt($ch,CURLOPT_POST, count($fields));
//curl_setopt($ch,CURLOPT_POSTFIELDS, $fields_string);

//execute post
$result = curl_exec($ch);
//print($result);die;
echo 'success';
//close connection
curl_close($ch);
	
}



?>