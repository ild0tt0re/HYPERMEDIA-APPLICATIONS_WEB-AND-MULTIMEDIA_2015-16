<?php
        if($_SERVER["REQUEST_METHOD"]=="POST"){
            $nome_smart_life=isset($_POST["nome_smart_life"])?$_POST["nome_smart_life"]:null;
			$id_device=isset($_POST["id_device"])?$_POST["id_device"]:null;
			if($nome_smart_life==null || $id_device==null){
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
			$nome_smart_life = $conn->real_escape_string( htmlentities($nome_smart_life) );
			$id_device = $conn->real_escape_string( htmlentities($id_device) );
			
			//prendo i dati dalle tabelle
			$query="SELECT smart_life.categoria AS categoria, smart_life.link_devices AS link_devices FROM smart_life JOIN for_device1sl ON smart_life.nome=for_device1sl.nome_smart_life WHERE for_device1sl.id_device='$id_device' AND for_device1sl.nome_smart_life='$nome_smart_life'";
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