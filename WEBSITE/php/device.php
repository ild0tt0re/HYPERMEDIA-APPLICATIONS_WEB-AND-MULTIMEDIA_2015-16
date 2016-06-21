<?php
        if($_SERVER["REQUEST_METHOD"]=="POST"){
            $id =isset($_POST["id"])?$_POST["id"]:null;
			
			if($id==null){
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
			
			//preparo la variabile $id per inserirla nella query
			$id = $conn->real_escape_string( htmlentities($id) );
	
			//prendo i dati del device
			$query="select marca,nome,image,caratteristiche,prezzo,rate,vecchio_prezzo,descrizione,specifiche from device where id_device='$id'";
			$result=$conn->query($query);
			
			if($result->num_rows > 0){
				//ho una sola riga della tabella device che ha $id e $nome specificati
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