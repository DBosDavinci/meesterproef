<!DOCTYPE HTML PUBLIC>
<HTML>
   <HEAD>
   <link rel="stylesheet" href="style.css">
   </HEAD>
   <BODY>
        <h1>Planned Games List</h1>
        <br>
        <table>
            <tr>
                <th>Naam van het spel</th>
                <th>Tijd</th>
                <th>Lengte</th>
                <th>Host</th>
            </tr>

            <?php

            $pdo = require "config.php";

            $sql = "SELECT * FROM plannedgames ORDER BY time";

            foreach ($conn->query($sql) as $row) {
                $gameid = $row["gameid"];
                $sql2 = "SELECT * FROM games WHERE id = $gameid";
                $result = $conn->query($sql2);
                $results = $result->fetch(PDO::FETCH_ASSOC);?>

                <tr>
                    <td class="naam"> <?= $results['name'];?> </td>
                    <td> <?= $row['time'];?> </td>
                    <td> <?= $results['play_minutes'] . " minuten";?> </td>
                    <td> <?php $gamingid = $row["id"];
                    $sql3 = "SELECT * FROM plannedusers WHERE plannedgameid = $gamingid;";
                    foreach ($conn->query($sql3) as $test) {
                        if ($test['is_host']) {
                            $userid = $test['userid'];
                            $sql4 = "SELECT * FROM users WHERE id = $userid";
                            $resulting = $conn->query($sql4);
                            $resultss = $resulting->fetch(PDO::FETCH_ASSOC);
                            echo $resultss['name'];
                        }
                    }?> 
                    </td>
                </tr>

            <?php } ?>
        </table>
   </BODY>
</HTML>
