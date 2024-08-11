<!-- DB Connection-->
<?php
// session_start();

define('SITEURL','http://localhost/foodOrder/');
define('LOCALHOST', 'localhost: 3307');
define('USERNAME', 'root');
define('PASSWORD', '');
define('DB_NAME', 'food-order');

$conn=mysqli_connect(LOCALHOST, USERNAME, PASSWORD) or die(mysqli_error());
$db_select=mysqli_select_db($conn,DB_NAME) or die(mysqli_error());

?>