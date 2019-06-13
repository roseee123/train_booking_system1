<!DOCTYPE html>
<html>
<head>
	<title>menu2</title>
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
    <li class="nav-item active"><a class="nav-link" href="menu2.php">網路訂票</a></li>
    <li class="nav-item"><a class="nav-link" href="menu3.php">訂票紀錄</a></li>
    <li class="nav-item"><a class="nav-link" href="menu4.php">取消訂票</a></li>
  </ul>
</nav>
<br>
	<!--新增訂單-->
	<form id="reservation-train-form" method="post" action="menu2.php">
		<label>輸入身分證字號:</label>
        <input type="text" name="id2">
        <br>
        <label>乘車方向:</label>
        <select class="dropdown" name="direction2">
            <option value="0">方向</option>
            <option value="1">南下</option>
            <option value="2">北上</option>
        </select>
        <br>
        <label>輸入車次:</label>
        <select class="dropdown" name="train_no2">
            <option value="0">車次</option>
            <option value="1">南下001</option>
            <option value="2">南下002</option>
            <option value="3">南下003</option>
            <option value="901">北上901</option>
            <option value="902">北上902</option>
            <option value="903">北上903</option>
        </select>
        <br>
        <label>乘車日期:</label>
        <input type="date" name="board_date2">
        <br>
        <label>起程車站:</label>
        <select class="dropdown" name="start_city2">
            <option value="0">車站</option>
            <option value="1">台北站</option>
            <option value="2">新竹站</option>
            <option value="3">台中站</option>
            <option value="4">台南站</option>
            <option value="5">高雄站</option>
        </select>
        <br>
        <label>到達車站:</label>
        <select class="dropdown" name="end_city2">
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
    	$id2 = $_POST['id2'];
    	$direction2 = $_POST['direction2'];
    	$train_no2 = $_POST['train_no2'];
    	$board_date2 = $_POST['board_date2'];
        $start_city2 = $_POST['start_city2'];
        $end_city2 = $_POST['end_city2'];
        echo "使用者身分證:" . $id2 . "<br/>";
        echo "乘車方向:" . $direction2 . "<br/>";
        echo "輸入車次:" . $train_no2 . "<br/>";
        echo "乘車日期:" . $board_date2 . "<br/>";
        echo "起程車站:" . $start_city2 . "<br/>";
        echo "到達車站:" . $end_city2 . "<br/>";
    }
    else
    {
    	print("請輸入資料");
    }

?> 
<hr>
<?php

//選擇南下或北上，查看各站座位總數是否為0
switch ($direction2) {
	case '1':
		$sql ="
SELECT
    *
FROM
    `train_seat`
WHERE
    `train_no` = '$train_no2' AND `board_date` = '$board_date2' AND `seat_amount` != '0' AND `city_no` BETWEEN '$start_city2' AND '$end_city2'";
		break;

	case '2':
		$sql ="
SELECT
    *
FROM
    `train_seat2`
WHERE
    `train_no` = '$train_no2' AND `board_date` = '$board_date2' AND `seat_amount` != '0' AND `city_no` BETWEEN '$end_city2' AND '$start_city2'";
		break;

	default:
		# code...
		break;
}

$result = mysqli_query($conn, $sql) or die("sql error." . sqlite_errors());

$total_fields=mysqli_num_fields($result); // 取得欄位數
$total_records=mysqli_num_rows($result);  // 取得記錄數

// echo "資料筆數:". $total_records . "<br>";

while ($row = mysqli_fetch_array($result, MYSQLI_NUM)) 
{
    // print_r( $row);
    // echo "<br>";
    $seat1= $seat1 + $row[4];
    $seat2= $seat2 + $row[5];
    $seat3= $seat3 + $row[6];
    $seat4= $seat4 + $row[7];
    $seat5= $seat5 + $row[8];
    $seat6= $seat6 + $row[9];
    $seat7= $seat7 + $row[10];
    $seat8= $seat8 + $row[11];
    $seat9= $seat9 + $row[12];
    $seat10= $seat10 + $row[13];
}

?>

<hr>
<?php
//如果seat_amount的資料筆數少於經過的車站數則沒有座位
if($end_city2>$start_city2)
{
	$station_count=$end_city2-$start_city2+1;
}
else
{
	$station_count=$start_city2-$end_city2+1;
}

 if($total_records <$station_count)
{
	echo "此班列車沒有座位";
}
else
{	
	//若有位置產生訂單標號
	$re_no2 = date('Ymd') . str_pad(mt_rand(1, 99999), 5, '0', STR_PAD_LEFT);
	// echo "訂單編號:". $re_no2 . "<br>";
    // echo "seat1=" . $seat1 . "<br>";
    // echo "seat2=" . $seat2 . "<br>";
    // echo "seat3=" . $seat3 . "<br>";

    //輸入座位編號
    if($seat1 == '0')
    {
	    echo "選擇座位1";
	    $seat_no2=1;
    }
    else if($seat2 == '0')
    {
	    echo "選擇座位2";
	    $seat_no2=2;
    }
    else if($seat3 == '0')
    {
	    echo "選擇座位3";
	    $seat_no2=3;
    }
    else if($seat4 == '0')
    {
	    echo "選擇座位4";
	    $seat_no2=4;
    }
    else if($seat5 == '0')
    {
	    echo "選擇座位5";
	    $seat_no2=5;
    }
    else if($seat6 == '0')
    {
	    echo "選擇座位6";
	    $seat_no2=6;
    }
    else if($seat7 == '0')
    {
	    echo "選擇座位7";
	    $seat_no2=7;
    }
    else if($seat8 == '0')
    {
	    echo "選擇座位8";
	    $seat_no2=8;
    }
    else if($seat9 == '0')
    {
	    echo "選擇座位9";
	    $seat_no2=9;
    }
    else if($seat10 == '0')
    {
	    echo "選擇座位10";
	    $seat_no2=10;
    }
    else
    {
	    echo "座位出錯";
    }

	//新增訂單到reservation
	$sql ="INSERT INTO `reservation`(
    `cus_id`,
    `re_no`,
    `board_date`,
    `train_no`,
    `seat_no`,
    `start_sta`,
    `end_sta`)
    VALUES(
    '$id2',
    '$re_no2',
    '$board_date2',
    '$train_no2',
    '$seat_no2',
    '$start_city2',
    '$end_city2'
    )";
    $result = mysqli_query($conn, $sql);

    mysqli_free_result($result);

}
?>

<?php
 if($total_records <$station_count)
{
	// echo "此班列車沒有座位";
}
else
{	
	//更改座位總數及座位號碼狀態
	if($end_city2>$start_city2)
{
	    switch ($seat_no2) {
    	case '1':
    		$sql ="UPDATE `train_seat`
                   SET `seat_amount` = `seat_amount` -1, `1`='$re_no2'
                   WHERE `train_no` = '$train_no2' AND `board_date` = '$board_date2' AND `city_no` BETWEEN '$start_city2' AND '$end_city2'";
    	    break;
    	
    	case '2':
    		$sql ="UPDATE `train_seat`
                   SET `seat_amount` = `seat_amount` -1, `2`='$re_no2'
                   WHERE `train_no` = '$train_no2' AND `board_date` = '$board_date2' AND `city_no` BETWEEN '$start_city2' AND '$end_city2'";
    	    break;

    	case '3':
    		$sql ="UPDATE `train_seat`
                   SET `seat_amount` = `seat_amount` -1, `3`='$re_no2'
                   WHERE `train_no` = '$train_no2' AND `board_date` = '$board_date2' AND `city_no` BETWEEN '$start_city2' AND '$end_city2'";
    	    break;

    	case '4':
    		$sql ="UPDATE `train_seat`
                   SET `seat_amount` = `seat_amount` -1, `4`='$re_no2'
                   WHERE `train_no` = '$train_no2' AND `board_date` = '$board_date2' AND `city_no` BETWEEN '$start_city2' AND '$end_city2'";
    	    break;

    	case '5':
    		$sql ="UPDATE `train_seat`
                   SET `seat_amount` = `seat_amount` -1, `5`='$re_no2'
                   WHERE `train_no` = '$train_no2' AND `board_date` = '$board_date2' AND `city_no` BETWEEN '$start_city2' AND '$end_city2'";
    	    break;

    	case '6':
    		$sql ="UPDATE `train_seat`
                   SET `seat_amount` = `seat_amount` -1, `6`='$re_no2'
                   WHERE `train_no` = '$train_no2' AND `board_date` = '$board_date2' AND `city_no` BETWEEN '$start_city2' AND '$end_city2'";
    	    break;

    	case '7':
    		$sql ="UPDATE `train_seat`
                   SET `seat_amount` = `seat_amount` -1, `7`='$re_no2'
                   WHERE `train_no` = '$train_no2' AND `board_date` = '$board_date2' AND `city_no` BETWEEN '$start_city2' AND '$end_city2'";
    	    break;

    	case '8':
    		$sql ="UPDATE `train_seat`
                   SET `seat_amount` = `seat_amount` -1, `8`='$re_no2'
                   WHERE `train_no` = '$train_no2' AND `board_date` = '$board_date2' AND `city_no` BETWEEN '$start_city2' AND '$end_city2'";
    	    break;

    	case '9':
    		$sql ="UPDATE `train_seat`
                   SET `seat_amount` = `seat_amount` -1, `9`='$re_no2'
                   WHERE `train_no` = '$train_no2' AND `board_date` = '$board_date2' AND `city_no` BETWEEN '$start_city2' AND '$end_city2'";
    	    break;

    	case '10':
    		$sql ="UPDATE `train_seat`
                   SET `seat_amount` = `seat_amount` -1, `10`='$re_no2'
                   WHERE `train_no` = '$train_no2' AND `board_date` = '$board_date2' AND `city_no` BETWEEN '$start_city2' AND '$end_city2'";
    	    break;

    	default:
    		# code...
    		break;
    	}
}
else
{
	    switch ($seat_no2) {
    	case '1':
    		$sql ="UPDATE `train_seat2`
                   SET `seat_amount` = `seat_amount` -1, `1`='$re_no2'
                   WHERE `train_no` = '$train_no2' AND `board_date` = '$board_date2' AND `city_no` BETWEEN '$end_city2' AND '$start_city2'";
    	    break;
    	
    	case '2':
    		$sql ="UPDATE `train_seat2`
                   SET `seat_amount` = `seat_amount` -1, `2`='$re_no2'
                   WHERE `train_no` = '$train_no2' AND `board_date` = '$board_date2' AND `city_no` BETWEEN '$end_city2' AND '$start_city2'";
    	    break;

    	case '3':
    		$sql ="UPDATE `train_seat2`
                   SET `seat_amount` = `seat_amount` -1, `3`='$re_no2'
                   WHERE `train_no` = '$train_no2' AND `board_date` = '$board_date2' AND `city_no` BETWEEN '$end_city2' AND '$start_city2'";
    	    break;

    	case '4':
    		$sql ="UPDATE `train_seat2`
                   SET `seat_amount` = `seat_amount` -1, `4`='$re_no2'
                   WHERE `train_no` = '$train_no2' AND `board_date` = '$board_date2' AND `city_no` BETWEEN '$end_city2' AND '$start_city2'";
    	    break;

    	case '5':
    		$sql ="UPDATE `train_seat2`
                   SET `seat_amount` = `seat_amount` -1, `5`='$re_no2'
                   WHERE `train_no` = '$train_no2' AND `board_date` = '$board_date2' AND `city_no` BETWEEN '$end_city2' AND '$start_city2'";
    	    break;

    	case '6':
    		$sql ="UPDATE `train_seat2`
                   SET `seat_amount` = `seat_amount` -1, `6`='$re_no2'
                   WHERE `train_no` = '$train_no2' AND `board_date` = '$board_date2' AND `city_no` BETWEEN '$end_city2' AND '$start_city2'";
    	    break;

    	case '7':
    		$sql ="UPDATE `train_seat2`
                   SET `seat_amount` = `seat_amount` -1, `7`='$re_no2'
                   WHERE `train_no` = '$train_no2' AND `board_date` = '$board_date2' AND `city_no` BETWEEN '$end_city2' AND '$start_city2'";
    	    break;

    	case '8':
    		$sql ="UPDATE `train_seat2`
                   SET `seat_amount` = `seat_amount` -1, `8`='$re_no2'
                   WHERE `train_no` = '$train_no2' AND `board_date` = '$board_date2' AND `city_no` BETWEEN '$end_city2' AND '$start_city2'";
    	    break;

    	case '9':
    		$sql ="UPDATE `train_seat2`
                   SET `seat_amount` = `seat_amount` -1, `9`='$re_no2'
                   WHERE `train_no` = '$train_no2' AND `board_date` = '$board_date2' AND `city_no` BETWEEN '$end_city2' AND '$start_city2'";
    	    break;

    	case '10':
    		$sql ="UPDATE `train_seat2`
                   SET `seat_amount` = `seat_amount` -1, `10`='$re_no2'
                   WHERE `train_no` = '$train_no2' AND `board_date` = '$board_date2' AND `city_no` BETWEEN '$end_city2' AND '$start_city2'";
    	    break;

    	default:
    		# code...
    		break;
    	}
}

    $result = mysqli_query($conn, $sql);

    mysqli_free_result($result);

    echo "已經完成訂票，這是你的訂單編號:". $re_no2 . "<br>";

}
?>

</body>
</html>