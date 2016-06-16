<?php
if($_SERVER["REQUEST_METHOD"]=="POST") {
	$id_faq = isset($_POST["id_faq"])?$_POST["id_faq"]:null;
    $domanda = isset($_POST["domanda"])?$_POST["domanda"]:null;
    $risposta = isset($_POST["risposta"])?$_POST["risposta"]:null;
    $submit = isset($_POST["submit"])?$_POST["submit"]:null;


    $conn = new mysqli("localhost", "root", "", "mytim");

    if($conn->connect_error){
        die("Errore connessione: " . $conn->connect_error);
    }

    if($submit){
		$id_faq = $conn->real_escape_string( htmlentities($id_faq) );
        $domanda = $conn->real_escape_string( htmlentities($domanda) );
        $risposta = $conn->real_escape_string( htmlentities($risposta) );

        $query = "UPDATE faq SET domanda='$domanda',risposta='$risposta' WHERE id_faq=$id_faq";
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
    <title>UPDATE FAQ</title>

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
	<div class="description">ID_FAQ: </div><input type="number" step="any" name="id_faq"><br>
    <div class="description">Domanda: </div><textarea name="domanda"></textarea><br>
    <div class="description">Risposta: </div><textarea name="risposta"></textarea><br>
    <div class="description"></div><input type="submit" name="submit">
</form>

</body>
</html>