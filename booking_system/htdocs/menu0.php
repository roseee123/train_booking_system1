<!DOCTYPE html>
<html>
<head>
	<title>menu0</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="booking_sytem2.css">
</head>
<body>
<?php include("connect_DB.php"); ?>
<hr>
<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
    <ul class="navbar-nav">
    <li class="nav-item active"><a class="nav-link" href="menu0.php">User</a></li>
    <li class="nav-item"><a class="nav-link" href="menu1.php">查詢車次</a></li>
    <li class="nav-item"><a class="nav-link" href="menu2.php">網路訂票</a></li>
    <li class="nav-item"><a class="nav-link" href="menu3.php">訂票紀錄</a></li>
    <li class="nav-item"><a class="nav-link" href="menu4.php">取消訂票</a></li>
  </ul>
</nav>
<br>

    <form id="user-form" method="post" action="menu0.php">
        <label>輸入姓名:</label>
        <input type="text" name="name">
        <br>
        <label>輸入身分證字號:</label>
        <input type="text" name="id">
        <br>
        <button name="btn">送出</button>
    </form>
    <hr>

    <?php 
    error_reporting(0);

    if (isset($_POST['btn']))
    {
    	$name = $_POST['name'];
        $id = $_POST['id'];
        echo "使用者姓名:" . $name . "<br/>";
        echo "使用者身分證:" . $id . "<br/>";
    }
    else
    {
    	print("請輸入資料 <br>");
    }
    ?>

<?php

        $sql ="
INSERT INTO `user`(`name`, `id`)
VALUES ('$name', '$id')";
?>

<?php
$sql ="
SELECT
    *
FROM
    `user`
WHERE
    `id` = '$id'";

$result = mysqli_query($conn, $sql);

$total_fields=mysqli_num_fields($result); // 取得欄位數

$total_records=mysqli_num_rows($result);  // 取得記錄數
echo "新增完成";


?>
</body>
</html>

