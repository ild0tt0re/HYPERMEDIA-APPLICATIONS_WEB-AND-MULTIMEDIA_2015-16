<?php
        if($_SERVER["REQUEST_METHOD"]=="POST"){
            $nome_smart_life=isset ($_POST["nome_smart_life"])?$_POST["nome_smart_life"]:null;
			if ($nome_smart_life == null){
				die();
			}
			
			//connessione al DataBase
			$conn=new mysqli("localhost","3110366","","my_hyp2016abate7annunziata");
			//$conn=new mysqli("localhost","root","","mytim");
			//controllo avvenuta connessione
			if(mysqli_connect_errno()){
				$errore = array("nome"=>"Problema di connessione al db", "descrizione"=>"Problema di connessione al db","contenuti"=>"Problema di connessione al db","regole"=>"Problema di connessione al db","image_descrizione"=>" ","image_contenuti"=>" ");
				die ( json_encode($errore) );
			}
			
			//sistemo la stringa $nome_smart_life per inserirla nella query
			$nome_smart_life = $conn->real_escape_string( htmlentities($nome_smart_life) );
			
			//prendo i dati della tabella smart_life
			$query="select * from smart_life where nome='$nome_smart_life'";
			$result=$conn->query($query);
			
			if($result->num_rows > 0){
				//ho una sola riga della tabella assistenza che ha $nome_smart_life specificato
				$riga=$result->fetch_array(MYSQL_ASSOC);
				//decodifico i valori presi dalla tabella in quanto si è reso necessario l'uso di Special Entities, questo perché alcuni caratteri speciali (Esempio: apici e doppi apici) generavano errori
				foreach( $riga as $chiave=>$valore ){
					$riga[$chiave]=html_entity_decode($valore);
				}
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