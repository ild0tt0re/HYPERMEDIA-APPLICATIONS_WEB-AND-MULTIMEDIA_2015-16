<?php
        if($_SERVER["REQUEST_METHOD"]=="POST"){
            $nome_assistenza=$_POST["nome_assistenza"];
			
			//connessione al DataBase
			//$conn=new mysqli("localhost","prova","ciaocane","prima_prova");
			$conn=new mysqli("localhost","root","","mytim");
			//controllo avvenuta connessione
			if(mysqli_connect_errno()){
				$errore = array("nome"=>"Problema di connessione al db", "descrizione"=>"Problema di connessione al db","intro_devices"=>"Problema di connessione al db");
				echo json_encode($errore);
				exit();
			}
			
			//prendo i dati della tabella assistenza
			$query="select * from assistenza where nome='$nome_assistenza'";
			$result=$conn->query($query);
			
			if($result->num_rows > 0){
				//ho una sola riga della tabella assistenza che ha $nome_assistenza specificato
				$riga=$result->fetch_array(MYSQL_ASSOC);
				echo json_encode($riga);//esporta in json
			}
			else{
				$not_found = array("nome"=>"Assistenza richiesta non trovata", "descrizione"=>"Assistenza richiesta non trovata","intro_devices"=>"Assistenza richiesta non trovata");
				echo json_encode($not_found);
			}

			//free result
			$result->close();
			//close connection
			$conn->close();
        }
    ?>