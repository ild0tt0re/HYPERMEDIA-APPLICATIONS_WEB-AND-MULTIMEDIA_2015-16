<?php
        if($_SERVER["REQUEST_METHOD"]=="POST"){
            $nome_smart_life=$_POST["nome_smart_life"];
			
			//connessione al DataBase
			//$conn=new mysqli("localhost","prova","ciaocane","prima_prova");
			$conn=new mysqli("localhost","root","","mytim");
			//controllo avvenuta connessione
			if(mysqli_connect_errno()){
				$errore = array("marca"=>"Problema di connessione al db", "nome"=>"Problema di connessione al db","image"=>"Problema di connessione al db","prezzo"=>0,"vecchio_prezzo"=>0,"intro"=>"Problema di connessione al db");
				echo json_encode($errore);
				exit();
			}
			
			//prendo i dati dalla tabella faq
			$query="select marca, nome, image, prezzo, vecchio_prezzo, intro from device join for_device1sl on device.id_device=for_device1sl.id_device where nome_smart_life='$nome_smart_life'";
			$result=$conn->query($query);
			
			if($result->num_rows > 0){
				$array_righe = array();
				
				while($riga=$result->fetch_array(MYSQL_ASSOC)){
					$array_righe[] = $riga;
				}
				echo json_encode($array_righe);//esporta in json
			}
			else{
				$not_found = array("marca"=>"Dispositivi non trovati", "nome"=>"Dispositivi non trovati","image"=>"Dispositivi non trovati","prezzo"=>0,"vecchio_prezzo"=>0,"intro"=>"Dispositivi non trovati");
				echo json_encode($not_found);
			}

			//free result
			$result->close();
			//close connection
			$conn->close();
        }
    ?>