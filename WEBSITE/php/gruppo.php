<?php
        if($_SERVER["REQUEST_METHOD"]=="POST"){
            $gruppo=isset($_POST["gruppo"])?$_POST["gruppo"]:null;
			if($gruppo == null){
				die();
			}
			
			//connessione al DataBase
			//$conn=new mysqli("localhost","prova","ciaocane","prima_prova");
			$conn=new mysqli("localhost","root","","mytim");
			//controllo avvenuta connessione
			if(mysqli_connect_errno()){
				$errore = array("nome"=>" ","image1"=>" ");
				die ( json_encode($errore) );
			}
			
			//sistemo la stringa $gruppo per inserirla nella query
			$gruppo = $conn->real_escape_string( htmlentities($gruppo) );
			
			//prendo i dati dalla tabella device
			$query="SELECT * FROM gruppo where nome='$gruppo'";
			$result=$conn->query($query);
			
			if($result->num_rows > 0){
				//Ho una sola riga nella tabella gruppo con nome = $gruppo (nome e' la chiave primaria)
				$riga=$result->fetch_array(MYSQL_ASSOC);
				echo json_encode($riga);//esporta in json
			}
			else{
				$not_found = array("nome"=>" ","image1"=>" ");
				echo json_encode($not_found);
			}

			//free result
			$result->close();
			//close connection
			$conn->close();
        }
    ?>