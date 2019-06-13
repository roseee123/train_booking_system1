### 簡易火車訂票系統

一、	功能:

1.	預約及查詢6/1~6/10車票。
2.	列車分為南下:001,002,003車次;北上:901,902,903車次，每輛列車10個座位。
3.	車站數:共5站-台北,新竹,台中,台南,高雄。
4.	座位可以被分段購買，例如:台北-台中，台南-高雄。
5.	被取消的座位可以再次被預訂。
6.	使用者完成訂票後，系統自動產生座位號碼及訂單編號。


二、	使用者介面:

menu0.php:新增使用者名稱跟身分證
1.	可以新增使用者姓名及身分證
2.	如果表格未輸入資料就送出，資料庫不會新增空資料

menu1.php:輸入乘車日期,方向,車站，查詢火車車次,乘車日期,出發站,停靠站,時間
1.	輸入輸入乘車日期,方向,車站，可以查詢火車車次,乘車日期,出發站,停靠站,時間
2.	把查詢結果以表格顯示在網頁上

menu2.php:輸入身分證,車次,乘車日期,方向,車站，進行訂票得到訂單編號
1.	輸入身分證, 方向,車次,乘車日期,車站，可以訂票
2.	自動產生一組流水編號，並且不會重複
3.	自動產生座位號碼
4.	如果沒有座位會顯示此班列車沒有座位
5.	座位可以被分段購買，例如:台北-台中，台南-高雄

menu3.php:輸入身分證查詢所有訂單
1.	輸入身分證，可以查詢所有訂票紀錄
2.	把查詢結果以表格顯示在網頁上

menu4.php:輸入訂單編號刪除訂單
1.	輸入訂票編號，可以刪除此訂單
2.	刪除後會把座位釋出
3.	如果輸入錯誤，顯示查無此訂單

connect_DB.php:鏈結資料庫booking_system

booking_system2.css:UI設計
1.	使用navbar切換分頁
2.	調整html字體
3.	設計按鈕樣式

三、	Schema

User(name, id)
Reservation(cus_id, re_no, board_date, train_no, seat_no, start_sta,end_sta)南下訂票
Reservation2(cus_id, re_no, board_date, train_no, seat_no, start_sta,end_sta) 北上訂票
Train(train_no, board_date, city_no, city_name, city_stop_time)南下列車
Train2(train_no, board_date, city_no, city_name, city_stop_time)北上列車
Train(train_no, board_date, city_no,_seat_amount,1,2,3,4,5,6,7,8,9,10)南下列車座位
Train2(train_no, board_date, city_no,_seat_amount,1,2,3,4,5,6,7,8,9,10)北上列車座位

四、	架設環境

Windows 10
XAMPP


