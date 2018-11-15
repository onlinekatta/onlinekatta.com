<html>
   <head>
      <title>Selecting Table in MySQLi Server</title>
   </head>

   <body>
      <?php
	     include('get_bio.php');
         $dbhost = 'localhost';
         $dbuser = 'root';
         $dbpass = '';
         $dbname = 'resto_demo';
         $conn = mysqli_connect($dbhost, $dbuser, $dbpass,$dbname);
   
         if(! $conn ) {
            die('Could not connect: ' . mysqli_error());
         }
         echo 'Connected successfully<br>';
		 
         $sql = 'SELECT current_user_id FROM ok_biometric where status=0';
         $result = mysqli_query($conn, $sql);
//$customer_id=$_GET['cid'];
         if (mysqli_num_rows($result) > 0) {
            while($row = mysqli_fetch_assoc($result)) {
               echo "current_user_id: " . $row["current_user_id"]. "<br>";
//UPDATE tutorials_inf SET name="althamas" WHERE name="ram"
            $sql2  =   'UPDATE ok_customers SET b_id=1 WHERE customer_id="'.$row["current_user_id"].'"';
           $result2 = mysqli_query($conn, $sql2);

		   $sql3 = 'UPDATE ok_biometric SET status=1 WHERE current_user_id="'.$row["current_user_id"].'"';
           $result2 = mysqli_query($conn, $sql3);


            }
         } else {
            echo "0 results";
         }
         mysqli_close($conn);
      ?>
   </body>
</html>