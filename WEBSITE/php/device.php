<?php
        if($_SERVER["REQUEST_METHOD"]=="POST"){
            $id =isset($_POST["id"])?$_POST["id"]:null;
			
			if($id==null){
				die();
			}
			//connessione al DataBase
			$conn=new mysqli("localhost","3110366","","my_hyp2016abate7annunziata");
			//$conn=new mysqli("localhost","root","","mytim");
			//controllo avvenuta connessione
			if(mysqli_connect_errno()){
				$errore = array("marca"=>"DB Connection Problem", "nome"=>" ","specifica1"=>" ");
				die( json_encode($errore) );
			}
			
			//preparo la variabile $id per inserirla nella query
			$id = $conn->real_escape_string( htmlentities($id) );
	
			//prendo i dati del device
			$query="SELECT * FROM device WHERE id_device='$id'";
			$result=$conn->query($query);
			
			if($result->num_rows > 0){
				//ho una sola riga della tabella device che ha $id e $nome specificati
				$riga=$result->fetch_array(MYSQL_ASSOC);
				
				//decodifico i valori presi dalla tabella in quanto si è reso necessario l'uso di Special Entities, questo perché alcuni caratteri speciali (Esempio: apici e doppi apici) generavano errori
				foreach( $riga as $chiave=>$valore ){
					$riga[$chiave]=html_entity_decode($valore);
				}

				echo json_encode($riga);
			}
			else{
				$not_found = array("marca"=>"Device non presente", "nome"=>"Device non presente","specifica1"=>"Device non presente");
				echo json_encode($not_found);
			}

			//free result
			$result->close();
			//close connection
			$conn->close();
        }
    ?>