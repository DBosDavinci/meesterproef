<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $game = $_POST['game'];
    $date = date_create($_POST['datum'] . $_POST['tijd']);
    $time = date_format($date, "Y/m/d H:i:s");
    $host = $_POST['host'];
    $players = $_POST['players'];
}

require "config.php";

$sql = "INSERT INTO plannedgames (game, time, host, players)
VALUES ('$game', '$time', '$host', '$players')";

$conn->exec($sql);
echo "New record created successfully";
header("refresh:1;url=main.html");
?>
