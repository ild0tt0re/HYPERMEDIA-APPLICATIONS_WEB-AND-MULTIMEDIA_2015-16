<?php
if($_SERVER["REQUEST_METHOD"]=="POST") {
    $categoria = isset($_POST["categoria"])?$_POST["categoria"]:null;
    $marca = isset($_POST["marca"])?$_POST["marca"]:null;
    $nome = isset($_POST["nome"])?$_POST["nome"]:null;
    $image = isset($_POST["image"])?$_POST["image"]:null;
    $caratteristiche = isset($_POST["caratteristiche"])?$_POST["caratteristiche"]:null;
    $prezzo = isset($_POST["prezzo"])?$_POST["prezzo"]:null;
    $rate = isset($_POST["rate"])?$_POST["rate"]:null;
    $vecchio_prezzo = isset($_POST["vecchio_prezzo"])?$_POST["vecchio_prezzo"]:null;
    $descrizione = isset($_POST["descrizione"])?$_POST["descrizione"]:null;
    $specifiche = isset($_POST["specifiche"])?$_POST["specifiche"]:null;
    $submit = isset($_POST["submit"])?$_POST["submit"]:null;


    $conn = new mysqli("localhost", "root", "", "mytim");

    if($conn->connect_error){
        die("Errore connessione: " . $conn->connect_error);
    }

    if($submit){
        $categoria = $conn->real_escape_string( htmlentities($categoria) );
        $marca = $conn->real_escape_string( htmlentities($marca) );
        $nome = $conn->real_escape_string( htmlentities($nome) );
        $image = $conn->real_escape_string( htmlentities($image) );
        $caratteristiche = $conn->real_escape_string( htmlentities($caratteristiche) );
        $prezzo = $conn->real_escape_string( htmlentities($prezzo) );
        $rate = $conn->real_escape_string( htmlentities($rate) );
        $vecchio_prezzo = $conn->real_escape_string( htmlentities($vecchio_prezzo) );
        $descrizione = $conn->real_escape_string( htmlentities($descrizione) );
        $specifiche = $conn->real_escape_string( htmlentities($specifiche) );

        $query = "INSERT INTO device (categoria, marca, nome, image, caratteristiche, prezzo, rate, vecchio_prezzo, descrizione, specifiche) VALUES ('$categoria', '$marca', '$nome', '$image', '$caratteristiche', '$prezzo', '$rate', '$vecchio_prezzo', '$descrizione', '$specifiche')";
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
    <title>Insert Device</title>

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
    <div class="description">Categoria: </div><input type="text" name="categoria"><br>
    <div class="description">Marca: </div><input type="text" name="marca"><br>
    <div class="description">Nome: </div><input type="text" name="nome"><br>
    <div class="description">Immagine: </div><input type="text" name="image"><br>
    <div class="description">Caratteristiche: </div><textarea name="caratteristiche"></textarea><br>
    <div class="description">Prezzo: </div><input type="number" step="any" name="prezzo"><br>
    <div class="description">Rate: </div><input type="text" name="rate"><br>
    <div class="description">Prezzo vecchio: </div><input type="number" step="any" name="vecchio_prezzo"><br>
    <div class="description">Descrizione: </div><textarea name="descrizione"></textarea><br>
    <div class="description">Specifiche: </div><textarea name="specifiche"></textarea><br>
    <div class="description"></div><input type="submit" name="submit">
</form>

</body>
</html>