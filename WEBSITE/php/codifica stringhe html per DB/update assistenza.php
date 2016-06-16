<?php
if($_SERVER["REQUEST_METHOD"]=="POST") {
    $nome = isset($_POST["nome"])?$_POST["nome"]:null;
    $descrizione = isset($_POST["descrizione"])?$_POST["descrizione"]:null;
    $intro_device = isset($_POST["intro_device"])?$_POST["intro_device"]:null;
    $submit = isset($_POST["submit"])?$_POST["submit"]:null;


    $conn = new mysqli("localhost", "root", "", "mytim");

    if($conn->connect_error){
        die("Errore connessione: " . $conn->connect_error);
    }

    if($submit){
        $nome = $conn->real_escape_string( htmlentities($nome) );
        $descrizione = $conn->real_escape_string( htmlentities($descrizione) );
        $intro_device = $conn->real_escape_string( htmlentities($intro_device) );

        $query = "UPDATE assistenza SET descrizione='$descrizione',intro_device='$intro_device' WHERE nome='$nome'";
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
    <title>UPDATE Assistenza</title>

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
    <div class="description">Nome Assistenza: </div><textarea name="nome"></textarea><br>
    <div class="description">Descrizione: </div><textarea name="descrizione"></textarea><br>
    <div class="description">Introduzione ai Devices: </div><textarea name="intro_device"></textarea><br>
    <div class="description"></div><input type="submit" name="submit">
</form>

</body>
</html>