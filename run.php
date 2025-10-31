<?php
header("Content-Type: text/plain; charset=utf-8");

// 获取GET参数（例如：run.php?lat=32.102078&lon=118.91059）
$lat = isset($_GET['lat']) ? escapeshellarg($_GET['lat']) : '';
$lon = isset($_GET['lon']) ? escapeshellarg($_GET['lon']) : '';

if ($lat && $lon) {
    $cmd = "./find.sh $lat $lon";
    $output = shell_exec($cmd);
    echo $output;
} else {
    echo "缺少参数：lat 和 lon";
}
?>
