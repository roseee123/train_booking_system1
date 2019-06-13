<!DOCTYPE html>
<html>

<head>
    <title>menu4</title>
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
    <li class="nav-item"><a class="nav-link" href="menu3.php">訂票紀錄</a></li>
    <li class="nav-item active"><a class="nav-link" href="menu4.php">取消訂票</a></li>
  </ul>
</nav>
<br>
    <!--刪除訂單-->
    <form id="delete-reservation-form" method="post" action="menu4.php">
         <label>輸入訂票編號:</label>
         <input type="text" name="re_no4">
         <br>
         <button name="btn">送出</button>
    </form>
    <hr>
<?php 
    error_reporting(0);

    if (isset($_POST['btn']))
    {
        $re_no4 = $_POST['re_no4'];
        echo "訂票編號:" . $re_no4 . "<br/>";
    }
    else
    {
        print("請輸入資料<br>");
    }
?>
<?php
if($id2 ="" && $direction2="" && $train_no2="" && $board_date2="" && $start_city2="" && $end_city2=""){

}
////為了乘車方向的判斷先做一次select存放start_city,end_city
$sql="
SELECT
    *
FROM
    `reservation`
WHERE
    `re_no`='$re_no4'";
$result = mysqli_query($conn, $sql) or die("sql error." . sqlite_errors());

$total_records=mysqli_num_rows($result);  // 取得記錄數
if($total_records==0)
{
    echo "查無此訂單<br>";
}

while ($row = mysqli_fetch_array($result, MYSQLI_NUM)) 
{
    // print_r( $row);
    // echo "<br>";
    $cus_id4= $row[0];
    // $re_no4= $row[1];
    $board_date4= $row[2];
    $train_no4= $row[3];
    $seat_no4= $row[4];
    $start_city4= $row[5];
    $end_city4= $row[6];
}

// mysqli_free_result($result);
?>
<?php
//更改座位總數及座位號碼狀態
if($end_city4 > $start_city4)
{
    switch ($seat_no4) {
        case '1':
            $sql ="UPDATE `train_seat`
        SET `seat_amount` = `seat_amount` +1, `1`='0'
        WHERE `train_no` = '$train_no4' AND `board_date` = '$board_date4' AND `city_no` BETWEEN '$start_city4' AND '$end_city4'";
        echo "釋放出座位1";
        break;

        case '2':
            $sql ="UPDATE `train_seat`
        SET `seat_amount` = `seat_amount` +1, `2`='0'
        WHERE `train_no` = '$train_no4' AND `board_date` = '$board_date4' AND `city_no` BETWEEN '$start_city4' AND '$end_city4'";
        echo "釋放出座位2";
        break;
        
        case '3':
            $sql ="UPDATE `train_seat`
        SET `seat_amount` = `seat_amount` +1, `3`='0'
        WHERE `train_no` = '$train_no4' AND `board_date` = '$board_date4' AND `city_no` BETWEEN '$start_city4' AND '$end_city4'";
        echo "釋放出座位3";
        break;
        
        case '4':
            $sql ="UPDATE `train_seat`
        SET `seat_amount` = `seat_amount` +1, `4`='0'
        WHERE `train_no` = '$train_no4' AND `board_date` = '$board_date4' AND `city_no` BETWEEN '$start_city4' AND '$end_city4'";
        echo "釋放出座位4";
        break;
        
        case '5':
            $sql ="UPDATE `train_seat`
        SET `seat_amount` = `seat_amount` +1, `5`='0'
        WHERE `train_no` = '$train_no4' AND `board_date` = '$board_date4' AND `city_no` BETWEEN '$start_city4' AND '$end_city4'";
        echo "釋放出座位5";
        break;
        
        case '6':
            $sql ="UPDATE `train_seat`
        SET `seat_amount` = `seat_amount` +1, `6`='0'
        WHERE `train_no` = '$train_no4' AND `board_date` = '$board_date4' AND `city_no` BETWEEN '$start_city4' AND '$end_city4'";
        echo "釋放出座位6";
        break;
        
        case '7':
            $sql ="UPDATE `train_seat`
        SET `seat_amount` = `seat_amount` +1, `7`='0'
        WHERE `train_no` = '$train_no4' AND `board_date` = '$board_date4' AND `city_no` BETWEEN '$start_city4' AND '$end_city4'";
        echo "釋放出座位7";
        break;
        
        case '8':
            $sql ="UPDATE `train_seat`
        SET `seat_amount` = `seat_amount` +1, `8`='0'
        WHERE `train_no` = '$train_no4' AND `board_date` = '$board_date4' AND `city_no` BETWEEN '$start_city4' AND '$end_city4'";
        echo "釋放出座位8";
        break;
        
        case '9':
            $sql ="UPDATE `train_seat`
        SET `seat_amount` = `seat_amount` +1, `9`='0'
        WHERE `train_no` = '$train_no4' AND `board_date` = '$board_date4' AND `city_no` BETWEEN '$start_city4' AND '$end_city4'";
        echo "釋放出座位9";
        break;
        
        case '10':
            $sql ="UPDATE `train_seat`
        SET `seat_amount` = `seat_amount` +1, `10`='0'
        WHERE `train_no` = '$train_no4' AND `board_date` = '$board_date4' AND `city_no` BETWEEN '$start_city4' AND '$end_city4'";
        echo "釋放出座位10";
        break;
        
        default:
            # code...
            break;
    }
}
else
{
    switch ($seat_no4) {
        case '1':
            $sql ="UPDATE `train_seat2`
        SET `seat_amount` = `seat_amount` +1, `1`='0'
        WHERE `train_no` = '$train_no4' AND `board_date` = '$board_date4' AND `city_no` BETWEEN '$end_city4' AND '$start_city4'";
        echo "釋放出座位1";
        break;

        case '2':
            $sql ="UPDATE `train_seat2`
        SET `seat_amount` = `seat_amount` +1, `2`='0'
        WHERE `train_no` = '$train_no4' AND `board_date` = '$board_date4' AND `city_no` BETWEEN '$end_city4' AND '$start_city4'";
        echo "釋放出座位2";
        break;
        
        case '3':
            $sql ="UPDATE `train_seat2`
        SET `seat_amount` = `seat_amount` +1, `3`='0'
        WHERE `train_no` = '$train_no4' AND `board_date` = '$board_date4' AND `city_no` BETWEEN '$end_city4' AND '$start_city4'";
        echo "釋放出座位3";
        break;
        
        case '4':
            $sql ="UPDATE `train_seat2`
        SET `seat_amount` = `seat_amount` +1, `4`='0'
        WHERE `train_no` = '$train_no4' AND `board_date` = '$board_date4' AND `city_no` BETWEEN '$end_city4' AND '$start_city4'";
        echo "釋放出座位4";
        break;
        
        case '5':
            $sql ="UPDATE `train_seat2`
        SET `seat_amount` = `seat_amount` +1, `5`='0'
        WHERE `train_no` = '$train_no4' AND `board_date` = '$board_date4' AND `city_no` BETWEEN '$end_city4' AND '$start_city4'";
        echo "釋放出座位5";
        break;
        
        case '6':
            $sql ="UPDATE `train_seat2`
        SET `seat_amount` = `seat_amount` +1, `6`='0'
        WHERE `train_no` = '$train_no4' AND `board_date` = '$board_date4' AND `city_no` BETWEEN '$end_city4' AND '$start_city4'";
        echo "釋放出座位6";
        break;
        
        case '7':
            $sql ="UPDATE `train_seat2`
        SET `seat_amount` = `seat_amount` +1, `7`='0'
        WHERE `train_no` = '$train_no4' AND `board_date` = '$board_date4' AND `city_no` BETWEEN '$end_city4' AND '$start_city4'";
        echo "釋放出座位7";
        break;
        
        case '8':
            $sql ="UPDATE `train_seat2`
        SET `seat_amount` = `seat_amount` +1, `8`='0'
        WHERE `train_no` = '$train_no4' AND `board_date` = '$board_date4' AND `city_no` BETWEEN '$end_city4' AND '$start_city4'";
        echo "釋放出座位8";
        break;
        
        case '9':
            $sql ="UPDATE `train_seat2`
        SET `seat_amount` = `seat_amount` +1, `9`='0'
        WHERE `train_no` = '$train_no4' AND `board_date` = '$board_date4' AND `city_no` BETWEEN '$end_city4' AND '$start_city4'";
        echo "釋放出座位9";
        break;
        
        case '10':
            $sql ="UPDATE `train_seat2`
        SET `seat_amount` = `seat_amount` +1, `10`='0'
        WHERE `train_no` = '$train_no4' AND `board_date` = '$board_date4' AND `city_no` BETWEEN '$end_city4' AND '$start_city4'";
        echo "釋放出座位10";
        break;
        
        default:
            # code...
            break;
    }
}
    
    $result = mysqli_query($conn, $sql);

    mysqli_free_result($result);
?>
<?php
$sql ="
DELETE
FROM `reservation`
WHERE `re_no` = '$re_no4'";

$result = mysqli_query($conn, $sql) or die("sql error." . sqlite_errors());

echo "已經刪除訂單";

?>

</body>
</html>