<!DOCTYPE HTML PUBLIC>
<HTML>
   <HEAD>
   </HEAD>
   <BODY>
        <a href="games.php"><p>Select a game</p></a>
        <form action="submitgame.php" method="post">
            <label for="game">Game:</label>
            <input type="text" value="<?php if (isset($_GET['game'])) {
                                                print $_GET["game"]; 
                                      }?>" 
                                            readonly="readonly" id="game" name="game" /><br>

            <label for="datum">Datum:</label>
            <input type="date" id="datum" name="datum"><br>

            <label for="tijd">Tijd:</label>
            <input type="time" id="tijd" name="tijd"><br>

            <label for="host">Persoon die het spel uitlegt:</label>
            <input type="text" id="host" name="host"><br>

            <label for="players">Personen die meedoen:</label>
            <input type="text" id="players" name="players"><br><br>

            <input type="submit">
        </form>
   </BODY>
</HTML>
