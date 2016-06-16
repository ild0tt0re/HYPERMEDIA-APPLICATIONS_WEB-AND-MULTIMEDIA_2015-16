<?php
        if($_SERVER["REQUEST_METHOD"]=="POST"){
            $id_device=isset($_POST["id_device"])?$_POST["id_device"]:-1;
			if( !is_numeric($id_device) || $id_device==-1){
				die();
			}
			
			//connessione al DataBase
			//$conn=new mysqli("localhost","prova","ciaocane","prima_prova");
			$conn=new mysqli("localhost","root","","mytim");
			//controllo avvenuta connessione
			if(mysqli_connect_errno()){
				$errore = array("nome_assistenza"=>"Errore DataBase");
				die ( json_encode($errore) );
			}
			
			//prendo i dati dalla tabella for_device_2as
			$query="select nome_assistenza from for_device_2as where id_device='$id_device'";
			$result=$conn->query($query);
			
			if($result->num_rows > 0){
				$array_righe = array();
				
				while($riga=$result->fetch_array(MYSQL_ASSOC)){
					$array_righe[] = $riga;
				}
				echo json_encode($array_righe);//esporta in json
			}
			else{
				$not_found = array("nome_assistenza"=>" ");
				echo json_encode($not_found);
			}

			//free result
			$result->close();
			//close connection
			$conn->close();
        }
    ?>