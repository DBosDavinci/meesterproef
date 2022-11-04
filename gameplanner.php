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
                <option value="" disabled selected hidden>Selecteer een host</option>
                <?php

                $sql = "SELECT name,id FROM users ORDER BY name";

                foreach ($conn->query($sql) as $row) {?>
                    <option value="<?= $row["id"]?>"> <?=$row["name"]?> </option>

                <?php } ?>
            </select><br>
            
            
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
            <label for="players">Personen die meedoen:</label>
            <?php

            $sql = "SELECT name,id FROM users ORDER BY name";
            
            for ($x = 1; $x <= 2; $x++) {?>
                <input type="hidden" name="id[]">
                <select name="players[]" class="drop">
                    <option value="" disabled selected hidden>Selecteer een speler</option>
                    <?php
                    foreach ($conn->query($sql) as $row) {?>
                        <option value="<?= $row["id"]?>"> <?=$row["name"]?> </option>
                    <?php }
            } ?>
            </select><br>

            <script>
                var $drops = $('.drop');

                $drops.change(function () {
                  $drops.find("option").show();
                  $drops.each(function(index, el) {
                    var val = $(el).val();
                    if (val) {
                     var $other = $drops.not(this);
                     $other.find("option[value=" + $(el).val() + "]").hide();
                    }
                  });
                });
            </script>

            <input type="submit">
        </form>
   </BODY>
</HTML>
