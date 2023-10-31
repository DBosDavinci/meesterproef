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

            $sql = "SELECT games.name AS game_name, plannedgames.time, games.play_minutes, users.name AS host_name, plannedgames.id
                    FROM plannedgames
                    INNER JOIN games ON plannedgames.gameid = games.id
                    LEFT JOIN plannedusers ON plannedgames.id = plannedusers.plannedgameid
                    LEFT JOIN users ON plannedusers.userid = users.id
                    ORDER BY plannedgames.time";

            $stmt = $conn->query($sql);
            $games = $stmt->fetchAll(PDO::FETCH_ASSOC);

            foreach ($games as $row) {?>
                <tr>
                    <td class="naam"> <?= $row['game_name'];?> </td>
                    <td> <?= $row['time'];?> </td>
                    <td> <?= $row['play_minutes'] . " minuten";?> </td>
                    <td> <?= $row['host_name']; ?></td>
                    <td><a href="details.php?id=<?= $row['id']?>">Details</a></td>
                    <td><a href="edit.php?id=<?= $row['id']?>">Edit</a></td>
                    <td id="delete"><p onclick="confirmdelete(<?= $row['id']?>)">Delete</p></td>
                </tr>

            <?php } ?>
        </table>

        <script>
            function confirmdelete(id) {
                let text = "Do you really want to delete this?";
              if (confirm(text) == true) {
                window.location.href = `delete.php?id=${id}`;
              } else {
                return;
              }
            }
        </script>
   </BODY>
</HTML>
