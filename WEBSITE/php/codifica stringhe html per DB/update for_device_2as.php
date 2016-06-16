<?php
if($_SERVER["REQUEST_METHOD"]=="POST") {
	$id_for_dev2as = isset($_POST["id_for_dev2as"])?$_POST["id_for_dev2as"]:null;
    $intro = isset($_POST["intro"])?$_POST["intro"]:null;
    $submit = isset($_POST["submit"])?$_POST["submit"]:null;


    $conn = new mysqli("localhost", "root", "", "mytim");

    if($conn->connect_error){
        die("Errore connessione: " . $conn->connect_error);
    }

    if($submit){
		$id_for_dev2as = $conn->real_escape_string( htmlentities($id_for_dev2as) );
        $intro = $conn->real_escape_string( htmlentities($intro) );

        $query = "UPDATE for_device_2as SET intro='$intro' WHERE id_for_dev2as=$id_for_dev2as";
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
    <title>UPDATE For_Device_2AS</title>

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
	<div class="description">ID_for_dev2as: </div><input type="number" step="any" name="id_for_dev2as"><br>
    <div class="description">Intro: </div><textarea name="intro"></textarea><br>
    <div class="description"></div><input type="submit" name="submit">
</form>

</body>
</html>