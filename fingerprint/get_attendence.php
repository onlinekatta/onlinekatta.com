<?php

mysql_connect('localhost', 'root', '')or die(mysql_error());
mysql_select_db('resto_demo')or die(mysql_error());
if (isset($_REQUEST['bid'])) {
    $biometric_id = $_REQUEST['bid'];
    $get_customer_id = mysql_query("select * from ok_customers where b_id = $biometric_id")or die(mysql_error());
    while ($row = mysql_fetch_assoc($get_customer_id)) {
        $customer_id = $row['customer_id'];
        $customer_group_id = $row['customer_group_id'];
    }
    $get_customer_location_id = mysql_query("select * from ok_customer_groups where customer_group_id = $customer_group_id")or die(mysql_error());
    while ($row = mysql_fetch_assoc($get_customer_location_id)) {
        $location_id = $row['location_id'];
    }

    $checking_attendence = mysql_query("select * from  ok_attendance where customer_id=$customer_id")or die(mysql_error());
    $num_rows = mysql_num_rows($checking_attendence);
    if ($num_rows == 2) {
        echo '2 attempts done';
    } else {
        $now = date("Y-m-d H:i:s");
        $update_attendence = mysql_query("insert into ok_attendance (customer_id,checking_date,location_id) values ('$customer_id','$now','$location_id')")or die(mysql_error());
        if ($update_attendence) {
            echo ' attendence successfully added';
        }
    }
}
?>