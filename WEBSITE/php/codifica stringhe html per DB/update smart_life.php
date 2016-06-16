<?php
if($_SERVER["REQUEST_METHOD"]=="POST") {
	$nome = isset($_POST["nome"])?$_POST["nome"]:null;
    $descrizione = isset($_POST["descrizione"])?$_POST["descrizione"]:null;
    $contenuti = isset($_POST["contenuti"])?$_POST["contenuti"]:null;
    $regole = isset($_POST["regole"])?$_POST["regole"]:null;
    $submit = isset($_POST["submit"])?$_POST["submit"]:null;


    $conn = new mysqli("localhost", "root", "", "mytim");

    if($conn->connect_error){
        die("Errore connessione: " . $conn->connect_error);
    }

    if($submit){
		$nome = $conn->real_escape_string( htmlentities($nome) );
        $descrizione = $conn->real_escape_string( htmlentities($descrizione) );
        $contenuti = $conn->real_escape_string( htmlentities($contenuti) );
        $regole = $conn->real_escape_string( htmlentities($regole) );

        $query = "UPDATE smart_life SET descrizione='$descrizione', contenuti='$contenuti',regole='$regole' WHERE nome='$nome'";
        $result=$conn->query($query);

        if($result) {
            echo "Dati inseriti.<br>\n";
            echo $query;
        }
        else{
            echo "Errore sql: " . $conn->error;
        }
    }
    $conn->close();
}
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>UPDATE Smart Life</title>

    <script src="script/jquery.min.js" type="text/javascript"></script>
    <style>
        img{
            width: 100px;
                    height: 100px;
                }
                h4{
            color: blue;
        }
        input{
            width: 500px;
        }
        textarea{
            width: 500px;
            height: 150px;
        }
        .description{
            width: 150px;
            display: inline-block;
        }
        input[type="submit"]{
            width: 200px;
        }
    </style>
</head>
<body>
<form action="" method="post">
	<div class="description">Nome Smart Life: </div><textarea name="nome"></textarea><br>
    <div class="description">Descrizione: </div><textarea name="descrizione"></textarea><br>
    <div class="description">Contenuti: </div><textarea name="contenuti"></textarea><br>
    <div class="description">Regole: </div><textarea name="regole"></textarea><br>
    <div class="description"></div><input type="submit" name="submit">
</form>

</body>
</html>