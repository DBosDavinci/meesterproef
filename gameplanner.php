<!DOCTYPE HTML PUBLIC>
<HTML>
   <HEAD>
   </HEAD>
   <BODY>
        <form action="submitgame.php" method="post">
            <label for="game">Game:</label>
            <select name="game">
                <?php

                $pdo = require "config.php";

                $sql = "SELECT name,id FROM games ORDER BY name";

                foreach ($conn->query($sql) as $row) {?>
                <option value="<?= $row["id"]?>"> <?=$row["name"]?> </option>

                <?php } ?>
            </select><br>

            <label for="datum">Datum:</label>
            <input type="date" id="datum" name="datum"><br>

            <label for="tijd">Tijd:</label>
            <input type="time" id="tijd" name="tijd"><br>

            <label for="host">Persoon die het spel uitlegt:</label>
            <select name="host">
                <?php

                $sql = "SELECT name,id FROM users ORDER BY name";

                foreach ($conn->query($sql) as $row) {?>
                    <option value="<?= $row["id"]?>"> <?=$row["name"]?> </option>

                <?php } ?>
            </select><br>

            <label for="players">Personen die meedoen:</label>

            <input type="hidden" name="id[]">
            <select name="players[]">
                <?php

                $sql = "SELECT name,id FROM users ORDER BY name";

                foreach ($conn->query($sql) as $row) {?>
                    <option value="<?= $row["id"]?>"> <?=$row["name"]?> </option>

                <?php } ?>
            </select>

            <input type="hidden" name="id[]">
            <select name="players[]">
                <?php

                $sql = "SELECT name,id FROM users ORDER BY name";

                foreach ($conn->query($sql) as $row) {?>
                    <option value="<?= $row["id"]?>"> <?=$row["name"]?> </option>

                <?php } ?>
            </select><br>

            <input type="submit">
        </form>
   </BODY>
</HTML>
