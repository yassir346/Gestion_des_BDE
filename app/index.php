<?php
$servername = "db"; // The service name defined in <docker-compose.yml
$username = "my_user";
$password = "my_password";
$dbname = "my_database";

// Creating connection
$conn = new mysqli($servername, $username, $password, $dbname);

//check connection
if($conn ->connect_error){
    die("connection failed: " .conn->connect_error);
}
echo "Connected successfully to MySQL !";

?>