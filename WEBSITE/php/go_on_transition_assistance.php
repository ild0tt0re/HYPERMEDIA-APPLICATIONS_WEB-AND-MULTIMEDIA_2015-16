<?php
        if($_SERVER["REQUEST_METHOD"]=="POST"){
            $nome_assistenza=isset($_POST["nome_assistenza"])?$_POST["nome_assistenza"]:null;
			$id_device=isset($_POST["id_device"])?$_POST["id_device"]:null;
			if($nome_assistenza==null || $id_device==null){
				die();
			}
			
			//connessione al DataBase
			$conn=new mysqli("localhost","3110366","","my_hyp2016abate7annunziata");
			
			//controllo avvenuta connessione
			if(mysqli_connect_errno()){
				$errore = array("categoria"=>"Problema di connessione al db", "link_devices"=>"Problema di connessione al db");
				die ( json_encode($errore) );
			}
			
			//sistemo le stringhe per inserirle nella query
			$nome_assistenza = $conn->real_escape_string( htmlentities($nome_assistenza) );
			$id_device = $conn->real_escape_string( htmlentities($id_device) );
			
			//prendo i dati dalle tabelle
			$query="SELECT assistenza.categoria AS categoria, assistenza.link_for_devices AS link_devices FROM assistenza JOIN for_device_2as ON assistenza.nome=for_device_2as.nome_assistenza WHERE for_device_2as.id_device='$id_device' AND for_device_2as.nome_assistenza='$nome_assistenza'";
			$result=$conn->query($query);
			
			if($result->num_rows > 0){
				$array_righe = array();
				
				while($riga=$result->fetch_array(MYSQL_ASSOC)){
					//decodifico i valori presi dalla tabella in quanto si è reso necessario l'uso di Special Entities, questo perché alcuni caratteri speciali (Esempio: apici e doppi apici) generavano errori
					foreach( $riga as $chiave=>$valore ){
						$riga[$chiave]=html_entity_decode($valore);
					}
					$array_righe[] = $riga;
				}
				echo json_encode($array_righe);//esporta in json
			}
			else{
				$not_found = array("categoria"=>"", "link_devices"=>"");
				echo json_encode($not_found);
			}

			//free result
			$result->close();
			//close connection
			$conn->close();
        }
    ?>