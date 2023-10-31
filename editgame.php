<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $id = $_POST['gameid'];
    $game = $_POST['game'];
    $date = date_create($_POST['datum'] . $_POST['tijd']);
    $time = date_format($date, "Y/m/d H:i:s");
    $host = $_POST['host'];
    for ($i = 0; $i < count($_POST['id']); $i++) {
        $players[$i] = $_POST['players'][$i];
    }
}

require "config.php";

$sql = "UPDATE plannedgames 
SET gameid = '$game', time = '$time'
WHERE id=$id";

$conn->exec($sql);

foreach ($players as $player) {
    if ($host == $player) {
        $sql = "UPDATE plannedusers 
        SET userid=$player, is_host=1
        WHERE plannedgameid=$id";
    } else {
        $sql = "UPDATE plannedusers 
        SET userid=$player, is_host=0
        WHERE plannedgameid=$id";
    }
    $conn->exec($sql);
}
    
echo "game updated";
header("refresh:1;url=plannedgames.php");
?>
