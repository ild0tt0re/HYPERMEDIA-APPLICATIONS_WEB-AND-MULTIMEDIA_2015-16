<?php
if($_SERVER["REQUEST_METHOD"]=="POST") {
	$id_device = isset($_POST["id_device"])?$_POST["id_device"]:null;
    $caratteristiche = isset($_POST["caratteristiche"])?$_POST["caratteristiche"]:null;
    $descrizione = isset($_POST["descrizione"])?$_POST["descrizione"]:null;
    $specifiche = isset($_POST["specifiche"])?$_POST["specifiche"]:null;
    $submit = isset($_POST["submit"])?$_POST["submit"]:null;


    $conn = new mysqli("localhost", "root", "", "mytim");

    if($conn->connect_error){
        die("Errore connessione: " . $conn->connect_error);
    }

    if($submit){
		$id_device = $conn->real_escape_string( htmlentities($id_device) );
        $caratteristiche = $conn->real_escape_string( htmlentities($caratteristiche) );
        $descrizione = $conn->real_escape_string( htmlentities($descrizione) );
        $specifiche = $conn->real_escape_string( htmlentities($specifiche) );

        $query = "UPDATE device SET caratteristiche='$caratteristiche', descrizione='$descrizione',specifiche='$specifiche' WHERE id_device=$id_device";
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
    <title>UPDATE Device</title>

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
	<div class="description">ID_DEVICE: </div><input type="number" step="any" name="id_device"><br>
    <div class="description">Caratteristiche: </div><textarea name="caratteristiche"></textarea><br>
    <div class="description">Descrizione: </div><textarea name="descrizione"></textarea><br>
    <div class="description">Specifiche: </div><textarea name="specifiche"></textarea><br>
    <div class="description"></div><input type="submit" name="submit">
</form>

</body>
</html>