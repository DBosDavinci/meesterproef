<!DOCTYPE HTML PUBLIC>
<HTML>
   <HEAD>
   <link rel="stylesheet" href="style.css">
   </HEAD>
   <BODY>
        <h1>Players List</h1>
        <br>
        <table>
            <tr>
                <th>Naam</th>
            </tr>

            <?php

            $pdo = require "config.php";

            $sql = "SELECT name FROM users ORDER BY name";

            foreach ($conn->query($sql) as $row) {?>
            <tr> 
                <form action="gameplanner.php" method="post">
                    <td class="naam"> 
                        <input type="text" name="users" value="<?php print $row["name"]?>" readonly></input> 
                    </td>
                    <td> <input type="submit"> </td>
                </form>
            </tr>

            <?php } ?>
        </table>
   </BODY>
</HTML>
