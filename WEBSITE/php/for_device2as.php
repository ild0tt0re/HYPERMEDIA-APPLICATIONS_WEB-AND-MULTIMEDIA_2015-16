<?php
        if($_SERVER["REQUEST_METHOD"]=="POST"){
			$nome_assistenza= isset($_POST["nome_assistenza"])?$_POST["nome_assistenza"]:null;
			if ($nome_assistenza==null){
				die();
			}
			//connessione al DataBase
			//$conn=new mysqli("localhost","prova","ciaocane","prima_prova");
			$conn=new mysqli("localhost","root","","mytim");
			//controllo avvenuta connessione
			if(mysqli_connect_errno()){
				$errore = array("marca"=>"Problema di connessione al db", "nome"=>"Problema di connessione al db","image"=>"Problema di connessione al db","prezzo"=>0,"vecchio_prezzo"=>0,"intro"=>"Problema di connessione al db");
				die ( json_encode($errore) );
			}
			
			//sistemo la stringa $nome_assistenza per inserirla nella query
			$nome_assistenza = $conn->real_escape_string( htmlentities($nome_assistenza) );
			
			//prendo i devices il cui ID è presente nella tabella for_device_2as. Di questi considero solo quelli che hanno il nome_assistenza cercato
			$query ="SELECT device.* FROM device JOIN for_device_2as ON device.id_device=for_device_2as.id_device WHERE for_device_2as.nome_assistenza='$nome_assistenza'";
			$result=$conn->query($query);
			
			if($result->num_rows > 0){
				$array_righe = array();
				
				while($riga=$result->fetch_array(MYSQL_ASSOC)){
					//decodifico i campi della tabella che contengono tag html codificati
					foreach( $riga as $chiave=>$valore ){
						$riga[$chiave]=html_entity_decode($valore);
					}
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