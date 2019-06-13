<?php
$servername = "localhost";
$username = "Rose";
$password = "";
$database ="booking_system";
 
// 创建连接
$conn = mysqli_connect($servername, $username, $password, $database);
 
// 检测连接
if ($conn) {	
	mysqli_query($conn, "SET NAMES utf8");
	echo "SQL連接成功";
} 
else
{
	echo "SQL連接失敗: " . mysqli_connect_error();
}

?>