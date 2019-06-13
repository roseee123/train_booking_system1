<!DOCTYPE html>
<html>
<head>
	<title>menu1</title>
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
    <li class="nav-item active"><a class="nav-link" href="menu1.php">查詢車次</a></li>
    <li class="nav-item"><a class="nav-link" href="menu2.php">網路訂票</a></li>
    <li class="nav-item"><a class="nav-link" href="menu3.php">訂票紀錄</a></li>
    <li class="nav-item"><a class="nav-link" href="menu4.php">取消訂票</a></li>
  </ul>
</nav>
<br>
    <!--查詢車次-->
	<form id="search-train-form" method="post" action="menu1.php">
        <label>乘車日期:</label>
        <input type="date" name="boarding_date1">
        <br>
        <label>乘車方向:</label>
        <select class="dropdown" name="direction1">
            <option value="0">方向</option>
            <option value="1">南下</option>
            <option value="2">北上</option>
        </select>
        <br>
        <label>起程車站:</label>
        <select class="dropdown" name="start_city1">
            <option value="0">車站</option>
            <option value="1">台北站</option>
            <option value="2">新竹站</option>
            <option value="3">台中站</option>
            <option value="4">台南站</option>
            <option value="5">高雄站</option>
        </select>
        <br>
        <label>到達車站:</label>
        <select class="dropdown" name="end_city1">
            <option value="0">車站</option>
            <option value="1">台北站</option>
            <option value="2">新竹站</option>
            <option value="3">台中站</option>
            <option value="4">台南站</option>
            <option value="5">高雄站</option>
        </select>
        <br>
        <button name="btn">送出</button>
    </form>
    <hr>
    <?php 
    error_reporting(0);

    if (isset($_POST['btn']))
    {
    	$boarding_date1 = $_POST['boarding_date1'];
        $direction1 = $_POST['direction1'];
        $start_city1 = $_POST['start_city1'];
        $end_city1 = $_POST['end_city1'];
        echo "乘車日期:" . $boarding_date1 . "<br/>";
        echo "乘車方向:" . $direction1 . "<br/>";
        echo "起程車站:" . $start_city1 . "<br/>";
        echo "到達車站:" . $end_city1 . "<br/>";
    }
    else
    {
    	print("請輸入資料");
    }

    ?>   

<?php
//選擇南下或北上
switch ($direction1) {
    case '1':
        $sql ="
SELECT
    A.`train_no`,
    A.`board_date`,
    A.`city_name`,
    A.`city_stop_time`,
    B.`city_name`,
    B.`city_stop_time`
FROM
    `train` AS A
INNER JOIN `train` AS B
ON
    (
        A.`train_no` = B.`train_no` AND A.`board_date` = B.`board_date`
    )
WHERE
    A.`board_date` = '$boarding_date1' AND A.`city_no` = '$start_city1' AND B.`city_no` = '$end_city1'";
        break;

    case '2':
        $sql ="
SELECT
    A.`train_no`,
    A.`board_date`,
    A.`city_name`,
    A.`city_stop_time`,
    B.`city_name`,
    B.`city_stop_time`
FROM
    `train2` AS A
INNER JOIN `train2` AS B
ON
    (
        A.`train_no` = B.`train_no` AND A.`board_date` = B.`board_date`
    )
WHERE
    A.`board_date` = '$boarding_date1' AND A.`city_no` = '$start_city1' AND B.`city_no` = '$end_city1'";
        break;
    
    default:
        # code...
        break;
}


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
    <td>車次</td>
    <td>乘車日期</td>
    <td>出發站</td>
    <td>出發時間</td>
    <td>抵達站</td>
    <td>抵達時間</td>
  </tr>

<?php 
for ($i=0;$i<$total_records;$i++) 
	{$row = mysqli_fetch_array($result); //將陣列以欄位名索引   
?>

<tr>

<td><?php echo $row[0];   ?></td>       
<td><?php echo $row[1];   ?></td> 
<td><?php echo $row[2];   ?></td> 
<td><?php echo $row[3];   ?></td> 
<td><?php echo $row[4]; ?></td>     
<td><?php echo $row[5];   ?></td> 

</tr>

<?php    }   ?>

</table>

</body>
</html>

