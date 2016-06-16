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
				$errore = array("nome_assistenza"=>"Problema di connessione al db", "domanda"=>"Problema di connessione al db","risposta"=>"Problema di connessione al db");
				die ( json_encode($errore) );
			}
			
			//sistemo la stringa $nome_assistenza per inserirla nella query
			$nome_assistenza = $conn->real_escape_string( htmlentities($nome_assistenza) );
			
			//prendo i dati dalla tabella faq
			$query="select nome_assistenza, domanda, risposta from faq where nome_assistenza='$nome_assistenza'";
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
				$not_found = array("nome_assistenza"=>"Assistenza richiesta non trovata", "domanda"=>"Assistenza richiesta non trovata","risposta"=>"Assistenza richiesta non trovata");
				echo json_encode($not_found);
			}

			//free result
			$result->close();
			//close connection
			$conn->close();
        }
    ?>