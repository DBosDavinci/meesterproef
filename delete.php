<?php

require "config.php";

$id = $_GET['id'];

$sql = "DELETE FROM plannedusers WHERE plannedgameid=$id;DELETE FROM plannedgames WHERE id=$id";

$conn->exec($sql);
    
echo "game verwijderd";
header("refresh:1;url=plannedgames.php");
?>
