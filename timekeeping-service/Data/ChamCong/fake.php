<?php


$month = 1;
$day = 1;

$day_arr = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

while($month < 13) {
    if ($day > $day_arr[$month]) {
        $day = 1;
        $month++;
    }
    if ($month == 13) {
        continue;
    }
    $year = 2022;
    $hour_ = 0;
    $hour__ = 0;
    $hour___ = 0;

    $__ = $day<10 ? "0" : $__ = "";
    $_ = $month<10 ? "0" : $_ = "";

    $file_name = "$year/$month/$__$day.json";
    $str = file_get_contents('__.json');
    $json = json_decode($str, true);
    $ngaychamcong = "$__$day-$_$month-$year";
    $time = strtotime("$__$day-$_$month-$year");
    $_______________________________________ = date('w',$time);
    $dimuon = mt_rand(0, 10);
    $dimuon_ = mt_rand(0, 2);
    foreach ($json as $k => $v) {
        // thoi gian lam sang
        while (true) {
            $hour = mt_rand(7,8);
            if ($hour_ >= $dimuon && $hour == 8) {
                continue;
            } 
            if ($hour == 8) {
                $hour_++;
            }
            break;
        }
        if ($hour == 8) {
            $minutes = mt_rand(0, 30);
        } else {
            $minutes = mt_rand(30, 59);
        }
        $seconds = mt_rand(0, 59);
        $_m = $minutes < 10 ? "0" : "";
        $_s = $seconds < 10 ? "0" : "";
        $tThoigianVaolamSang = "0$hour:$_m$minutes:$_s$seconds";
        // thoigianlam sang
        // thoigiannghisang
        $minutes = mt_rand(0, 10);
        $seconds = mt_rand(0, 59);
        $_m = $minutes < 10 ? "0" : "";
        $_s = $seconds < 10 ? "0" : "";
        $tThoigianNghiSang = "12:$_m$minutes:$_s$seconds";
        // thoigiannghisang
        // thoigianlamchieu
        while (true) {
            $hour = mt_rand(13,14);
            if ($hour__ == $dimuon_ && $hour == 14) {
                continue;
            } 
            if ($hour == 14) {
                $hour__++;
            }
            break;
        }
        $minutes = mt_rand(0, 59);
        $seconds = mt_rand(0, 59);
        $_m = $minutes < 10 ? "0" : "";
        $_s = $seconds < 10 ? "0" : "";
        $tThoigianVaolamChieu = "$hour:$_m$minutes:$_s$seconds";
        // thoigianlamchieu
        // thoigiannghichieu
        $minutes = mt_rand(30, 40);
        $seconds = mt_rand(0, 59);
        $_m = $minutes < 10 ? "0" : "";
        $_s = $seconds < 10 ? "0" : "";
        $tThoigianNghiChieu = "17:$_m$minutes:$_s$seconds";
        // thoigiannghichieu
        $v['tThoigianVaolamSang'] = $tThoigianVaolamSang;
        $v['tThoigianNghiSang'] = $tThoigianNghiSang;
        $v['tThoigianVaolamChieu'] = $tThoigianVaolamChieu;
        $v['tThoigianNghiChieu'] = $tThoigianNghiChieu;
        $v['tThoigianVaolamToi'] = NULL;
        $v['tThoigianNghiToi'] = NULL;
        $v['dNgayChamcong'] = $ngaychamcong;
        $___json[$k] = $v;
    }
    if($_______________________________________ != 0 && $_______________________________________ != 6){
        if (!file_exists("$year/$month/")) {
            mkdir("$year/$month/", 0777, true);
        }
        $data = json_encode($___json, JSON_UNESCAPED_UNICODE);
        $fp = fopen($file_name, 'w');
        echo ($file_name . "n");
        fwrite($fp, json_encode($data));
        fclose($fp);
    }
    $day++;
}
?>