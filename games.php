<!DOCTYPE HTML PUBLIC>
<HTML>
   <HEAD>
   <link rel="stylesheet" href="style.css">
   </HEAD>
   <BODY>
        <h1>Games List</h1>
        <br>
        <table>
            <tr>
                <th>Naam van het spel</th>
                <th>Afbeelding</th>
                <th>Beschrijving</th>
            </tr>

            <?php

            $pdo = require "config.php";

            $sql = "SELECT image, name, description FROM games ORDER BY name";

            foreach ($conn->query($sql) as $row) {?>
            <tr>
                <td class="naam"> <?= $row['name'];?> </td>
                <td> <img width="150px" height="150px" src="afbeeldingen/<?= $row['image'];?>"> </td>
                <td> <?= $row['description'];?> </td>
                <td> <a href="gameplanner.php?game=<?= $row['name']; ?>">Submit</a> </td>
            </tr>

            <?php } ?>
        </table>
   </BODY>
</HTML>
