<!DOCTYPE html>
<html>
<head>
	<title>menu3</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="booking_sytem2.css">
</head>
<body>
     <?php include("connect_DB.php"); ?>
     <hr>
<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
    <ul class="navbar-nav">
    <li class="nav-item"><a class="nav-link" href="menu0.php">User</a></li>
    <li class="nav-item"><a class="nav-link" href="menu1.php">查詢車次</a></li>
    <li class="nav-item"><a class="nav-link" href="menu2.php">網路訂票</a></li>
    <li class="nav-item active"><a class="nav-link" href="menu3.php">訂票紀錄</a></li>
    <li class="nav-item"><a class="nav-link" href="menu4.php">取消訂票</a></li>
  </ul>
</nav>
<br>
	<!--查詢訂單紀錄-->
	<form id="search-reservation-form" method="post" action="menu3.php">
        <label>輸入身分證字號:</label>
        <input type="text" name="id3">
        <br>
        <button name="btn">送出</button>
    </form>
    <hr>
<?php 
error_reporting(0);

    if (isset($_POST['btn']))
    {
        $id3 = $_POST['id3'];
        echo "使用者身分證:" . $id3 . "<br/>";
    }
    else
    {
    	print("請輸入資料");
    }
?>
<?php
////為了乘車方向的判斷先做一次select存放start_city,end_city
// $sql ="
// SELECT * FROM `reservation` WHERE `cus_id` = '$id3'";
// $result = mysqli_query($conn, $sql) or die("sql error." . sqlite_errors());

// while ($row = mysqli_fetch_array($result, MYSQLI_NUM)) 
// {
//     // print_r( $row);
//     // echo "<br>";
//     $start_city3= $row[5];
//     $end_city3= $row[6];
// }

?>

<?php
// if($end_city3>$start_city3)
// {
// 	$sql ="
// SELECT DISTINCT
//     R.`cus_id`,
//     R.`re_no`,
//     R.`board_date`,
//     R.`train_no`,
//     R.`seat_no`,
//     A.`city_name`,
//     A.`city_stop_time`,
//     B.`city_name`,
//     B.`city_stop_time`
// FROM
//     `train` AS A
// INNER JOIN(
//         `reservation` AS R
//     INNER JOIN `train` AS B
//     ON
//         R.`end_sta` = B.`city_no`
//     )
// ON
//     R.`start_sta` = A.`city_no`
// WHERE
//     R.`train_no`=A.`train_no`=B.`train_no` AND R.`cus_id` = '$id3'";
// }
// else
// {
// 	$sql ="
// SELECT DISTINCT
//     R.`cus_id`,
//     R.`re_no`,
//     R.`board_date`,
//     R.`train_no`,
//     R.`seat_no`,
//     A.`city_name`,
//     A.`city_stop_time`,
//     B.`city_name`,
//     B.`city_stop_time`
// FROM
//     `train2` AS A
// INNER JOIN(
//         `reservation` AS R
//     INNER JOIN `train2` AS B
//     ON
//         R.`end_sta` = B.`city_no`
//     )
// ON
//     A.`city_no` = R.`start_sta`
// WHERE
//     R.`train_no`=A.`train_no`=B.`train_no` AND R.`cus_id` = '$id3'";
// }

	$sql ="

SELECT DISTINCT
    R.`cus_id`,
    R.`re_no`,
    R.`board_date`,
    R.`train_no`,
    R.`seat_no`,
    A.`city_name`,
    B.`city_name`
FROM
    `station` AS A
INNER JOIN(
        `reservation` AS R
    INNER JOIN `station` AS B
    ON
        R.`end_sta` = B.`city_no`
    )
ON
    A.`city_no` = R.`start_sta`
WHERE
    R.`cus_id` = '$id3'";		

$result = mysqli_query($conn, $sql) or die("sql error." . sqlite_errors());

$total_fields=mysqli_num_fields($result); // 取得欄位數

$total_records=mysqli_num_rows($result);  // 取得記錄數

// while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
//     print_r( $row);
// }
?>
<hr>
<table width="700" border="1">
  <tr>
    <td>身分證字號</td>
    <td>訂單編號</td>
    <td>乘車日期</td>
    <td>車次</td>
    <td>座位</td>
    <td>出發站</td>
    <!-- <td>出發時間</td> -->
    <td>抵達站</td>
    <!-- <td>抵達時間</td> -->
  </tr>

<?php for ($i=0;$i<$total_records;$i++) {$row = mysqli_fetch_array($result); //將陣列以欄位名索引   ?>

<tr>

<td><?php echo $row[0];   ?></td>       
<td><?php echo $row[1];   ?></td> 
<td><?php echo $row[2];   ?></td> 
<td><?php echo $row[3];   ?></td> 
<td><?php echo $row[4];   ?></td>     
<td><?php echo $row[5];   ?></td> 
<td><?php echo $row[6];   ?></td> 
<!-- <td><?php echo $row[7];   ?></td> 
<td><?php echo $row[8];   ?></td>  -->
</tr>

<?php    }   ?>

</table>

</body>
