<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $game = trimdata($_POST['game']);
    $date = date_create(trimdata($_POST['datum']) . trimdata(($_POST['tijd'])));
    $time = date_format($date, "Y/m/d H:i:s");
    $host = trimdata($_POST['host']);
    for ($i = 0; $i < count($_POST['id']); $i++) {
        $players[$i] = trimdata($_POST['players'][$i]);
    }
}

function trimdata($data)
{
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

require "config.php";

$sql = $conn->prepare("INSERT INTO plannedgames (gameid, time) VALUES (:gameid, :time)");
$sql->bindParam(':gameid', $game);
$sql->bindParam(':time', $time);
$sql->execute();
$plannedgameid = $conn->lastInsertId();

$sql = $conn->prepare("INSERT INTO plannedusers (plannedgameid, userid, is_host)
VALUES (:plannedgameid, :player, :is_host)");

$sql->bindParam(':plannedgameid', $plannedgameid);
$sql->bindParam(':player', $player);
$sql->bindParam(':is_host', $is_host);

foreach ($players as $player) {
    if ($host == $player) {
        $is_host = 1;
    } else {
        $is_host = 0;
    }
    $sql->execute();
}
    
echo "game ingepland op $time";
header("refresh:1;url=main.html");
?>
