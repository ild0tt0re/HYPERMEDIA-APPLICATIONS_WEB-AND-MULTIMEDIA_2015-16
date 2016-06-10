<?php
        if($_SERVER["REQUEST_METHOD"]=="POST"){
            $nome_smart_life=$_POST["nome_smart_life"];
			
			//connessione al DataBase
			//$conn=new mysqli("localhost","prova","ciaocane","prima_prova");
			$conn=new mysqli("localhost","root","","mytim");
			//controllo avvenuta connessione
			if(mysqli_connect_errno()){
				$errore = array("nome"=>"Problema di connessione al db", "descrizione"=>"Problema di connessione al db","contenuti"=>"Problema di connessione al db","regole"=>"Problema di connessione al db","image_descrizione"=>" ","image_contenuti"=>" ");
				echo json_encode($errore);
				exit();
			}
			
			//prendo i dati della tabella assistenza
			$query="select * from smart_life where nome='$nome_smart_life'";
			$result=$conn->query($query);
			
			if($result->num_rows > 0){
				//ho una sola riga della tabella assistenza che ha $nome_smart_life specificato
				$riga=$result->fetch_array(MYSQL_ASSOC);
				echo json_encode($riga);//esporta in json
			}
			else{
				$not_found = array("nome"=>"Servizio SL non trovato", "descrizione"=>"Servizio SL non trovato","contenuti"=>"Servizio SL non trovato","regole"=>"Servizio SL non trovato","image_descrizione"=>" ","image_contenuti"=>" ");
				echo json_encode($not_found);
			}

			//free result
			$result->close();
			//close connection
			$conn->close();
        }
    ?>