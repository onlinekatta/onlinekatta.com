<html>
    <head>
        <title>Selecting Table in MySQLi Server</title>
    </head>

    <body>
        <?php
        mysql_connect('localhost', 'root', '')or die(mysql_error());
        mysql_select_db('resto_demo')or die(mysql_error());
        if (isset($_REQUEST['bid'])) {
            $biometric_id = $_REQUEST['bid'];
            $customer_id_present = $customer_id = '';
            //already present in customers table.
            $get_update_customer_id = mysql_query("select * from ok_biometric where status = '3'")or die(mysql_error());
            while ($row = mysql_fetch_assoc($get_update_customer_id)) {
                $customer_id_present = $row['current_user_id'];
            }
            if ($customer_id_present) {
                $get_current_customer_id = mysql_query("select * from ok_biometric where status = 3")or die(mysql_error());
                while ($row = mysql_fetch_assoc($get_current_customer_id)) {
                    $customer_id = $row['current_user_id'];
                }
                $update_biometric_id = mysql_query("update ok_customers set b_id = $biometric_id where customer_id = '$customer_id'")or die(mysql_error());
                if ($update_biometric_id) {
                    $change_status_biometric_id = mysql_query("update ok_biometric set status = 4 where current_user_id = '$customer_id'")or die(mysql_error());
                    echo 'Change resgister user';
                }
            } else {
                $get_current_customer_id = mysql_query("select * from ok_biometric where status = 1")or die(mysql_error());
                while ($row = mysql_fetch_assoc($get_current_customer_id)) {
                    $customer_id = $row['current_user_id'];
                }
                $update_biometric_id = mysql_query("update ok_customers set b_id = $biometric_id where customer_id = '$customer_id'")or die(mysql_error());
                if ($update_biometric_id) {
                    $change_status_biometric_id = mysql_query("update ok_biometric set status = 2 where current_user_id = '$customer_id'")or die(mysql_error());
                    echo 'successfully resgister user';
                }
            }
        }
        ?>
    </body>
</html>