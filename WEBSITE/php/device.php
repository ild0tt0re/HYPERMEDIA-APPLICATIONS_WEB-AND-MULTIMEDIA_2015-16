<?php
        if($_SERVER["REQUEST_METHOD"]=="POST"){
            $marca =isset($_POST["marca"])?$_POST["marca"]:null;
			$nome = isset($_POST["nome"])?$_POST["nome"]:null;
			
			if($marca==null || $nome==null){
				die();
			}
			//connessione al DataBase
			//$conn=new mysqli("localhost","prova","ciaocane","prima_prova");
			$conn=new mysqli("localhost","root","","mytim");
			//controllo avvenuta connessione
			if(mysqli_connect_errno()){
				$errore = array("marca"=>"DB Connection Problem", "nome"=>" ","specifiche"=>" ");
				die( json_encode($errore) );
			}
			
			//sistemo le stringhe per inserirle nella query
			$marca = $conn->real_escape_string( htmlentities($marca) );
			$nome = $conn->real_escape_string( htmlentities($nome) );
	
			//prendo i dati del device
			//$query="select id_device,marca,nome,image,caratteristiche,prezzo,rate,vecchio_prezzo,descrizione,specifiche from device where marca='$marca' and nome='$nome'";
			$query="select id_device,marca,nome,image,caratteristiche,prezzo,rate,vecchio_prezzo,descrizione,specifiche from device where marca='$marca' and nome='$nome'";
			$result=$conn->query($query);
			
			if($result->num_rows > 0){
				//ho una sola riga della tabella device che ha $marca e $nome specificati
				$riga=$result->fetch_array(MYSQL_ASSOC);
				
				//decodifico i campi della tabella che contengono tag html codificati
				foreach( $riga as $chiave=>$valore ){
					$riga[$chiave]=html_entity_decode($valore);
				}

				echo json_encode($riga);
			}
			else{
				$not_found = array("marca"=>"Device non presente", "nome"=>"Device non presente","specifiche"=>"Device non presente");
				echo json_encode($not_found);
			}

			//free result
			$result->close();
			//close connection
			$conn->close();
        }
    ?>