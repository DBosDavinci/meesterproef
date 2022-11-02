<?php

$pdo = require "config.php";

$gameid = $_GET['id'];

$sql = "DELETE FROM plannedusers WHERE plannedgameid = $gameid";
$sql2 = "DELETE FROM plannedgames WHERE id = $gameid";

$conn->query($sql);
$conn->query($sql2);

echo "Game verwijderd";
header("refresh:1;url=main.html");
?>
