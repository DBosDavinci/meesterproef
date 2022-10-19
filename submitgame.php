<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $game = $_POST['game'];
    $date = date_create($_POST['datum'] . $_POST['tijd']);
    $time = date_format($date, "Y/m/d H:i:s");
    $host = $_POST['host'];
    for ($i = 0; $i < count($_POST['id']); $i++) {
        $players[$i] = $_POST['players'][$i];
    }
}

require "config.php";

print_r($players);

$sql = "INSERT INTO plannedgames (gameid, time)
VALUES ('$game', '$time')";

$conn->exec($sql);

$plannedgameid = $conn->lastInsertId();

foreach ($players as $player) {
    if ($host == $player) {
        $sql = "INSERT INTO plannedusers (plannedgameid, userid, is_host)
        VALUES ('$plannedgameid', '$player', 1)";
    } else {
        $sql = "INSERT INTO plannedusers (plannedgameid, userid, is_host)
        VALUES ('$plannedgameid', '$player', 0)";
    }
    $conn->exec($sql);
}
    
echo "Nieuwe game ingepland op $time";
#header("refresh:1;url=main.html");
?>
