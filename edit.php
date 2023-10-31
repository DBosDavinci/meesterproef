<!DOCTYPE HTML PUBLIC>
<HTML>
   <HEAD>
    <?php   
        $pdo = require "config.php";
        $id = $_GET['id'];

        $sql = "SELECT * FROM plannedgames WHERE id=$id";
        $result = $conn->query($sql);
        $results = $result->fetch(PDO::FETCH_ASSOC);
        $tijd = $results['time'];
        $gameid = $results['gameid'];

        $sql = "SELECT * FROM games WHERE id=$gameid";
        $result = $conn->query($sql);
        $results = $result->fetch(PDO::FETCH_ASSOC);
        $gamename = $results['name'];

        $users = array();
        $sql = "SELECT * FROM plannedusers WHERE plannedgameid=$id";
        foreach($conn->query($sql) as $row) {
            $userid = $row['userid'];
            $sql = "SELECT * FROM users WHERE id=$userid";
            foreach($conn->query($sql) as $row) {
                $users[]= $row['name'];
            }
        }

        $sql = "SELECT * FROM plannedusers WHERE plannedgameid = $id AND is_host = 1";
        $result = $conn->query($sql);
        $results = $result->fetch(PDO::FETCH_ASSOC);
        $userid = $results['userid'];

        $sql = "SELECT * FROM users WHERE id=$id";
        $result = $conn->query($sql);
        $results = $result->fetch(PDO::FETCH_ASSOC);
        $host = $row['name'];

        $datetime = preg_split("/[\s]/",$tijd);
        $date = $datetime[0];
        $time = $datetime[1];
    ?>
   </HEAD>
   <BODY>
        <form action="editgame.php" method="post">
            <label for="gameid">GameID:</label>
            <input type="text" name="gameid" id="gameid" value=<?=$id?> readonly><br>

            <label for="game">Game:</label>
            <select name="game" value=<?=$gamename?>>
                <?php

                $pdo = require "config.php";

                $sql = "SELECT name,id FROM games ORDER BY name";

                foreach ($conn->query($sql) as $row) {?>
                <option value="<?= $row["id"]?>"> <?=$row["name"]?> </option>

                <?php } ?>
            </select><br>

            <label for="datum">Datum:</label>
            <input type="date" id="datum" name="datum" value=<?=$date?>><br>

            <label for="tijd">Tijd:</label>
            <input type="time" id="tijd" name="tijd" value=<?=$time?>><br>

            <label for="host">Persoon die het spel uitlegt:</label>
            <select name="host">
                <?php

                $sql = "SELECT name,id FROM users ORDER BY name";

                foreach ($conn->query($sql) as $row) {?>
                    <option value="<?= $row["id"]?>"> <?=$row["name"]?> </option>

                <?php } ?>
            </select><br>

            <label for="players">Personen die meedoen:</label>

            <br>
            <input type="hidden" name="id[]">
            <select name="players[]">
                <?php

                $sql = "SELECT name,id FROM users ORDER BY name";

                foreach ($conn->query($sql) as $row) {?>
                    <option value="<?= $row["id"]?>"> <?=$row["name"]?> </option>

                <?php } ?>
            </select>

            <br>
            <input type="hidden" name="id[]">
            <select name="players[]">
                <?php

                $sql = "SELECT name,id FROM users ORDER BY name";

                foreach ($conn->query($sql) as $row) {?>
                    <option value="<?= $row["id"]?>"> <?=$row["name"]?> </option>

                <?php } ?>
            </select>
            
            <br><br>

            <input type="submit">
        </form>
   </BODY>
</HTML>
