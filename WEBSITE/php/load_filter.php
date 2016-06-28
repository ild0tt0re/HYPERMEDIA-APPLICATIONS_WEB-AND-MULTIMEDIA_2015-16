<?php
        if($_SERVER["REQUEST_METHOD"]=="POST"){
            $categoria_device =isset($_POST["categoria_device"])?$_POST["categoria_device"]:null;
			
			if($categoria_device==null){
				die();
			}
			//connessione al DataBase
			//$conn=new mysqli("localhost","prova","ciaocane","prima_prova");
			$conn=new mysqli("localhost","root","","mytim");
			//controllo avvenuta connessione
			if(mysqli_connect_errno()){
				$errore = array("filtro1"=>"DB Connection Problem", "filtro2"=>" ","filtro3"=>" ","filtro4"=>" ");
				die( json_encode($errore) );
			}
			
			//preparo la variabile $categoria_device per inserirla nella query
			$categoria_device = $conn->real_escape_string( htmlentities($categoria_device) );
	
			//prendo i dati del device
			$query="SELECT filtro1, filtro2, filtro3, filtro4 FROM filtro WHERE categoria_device='$categoria_device'";
			$result=$conn->query($query);
			
			if($result->num_rows > 0){
				//ho una sola riga della tabella filtro che ha $categoria_device specificata (è infatti la chiave primaria)
				$riga=$result->fetch_array(MYSQL_ASSOC);
				
				//decodifico i campi della tabella che contengono tag html codificati e/o caratteri speciali quali lettere accentate e apici
				foreach( $riga as $chiave=>$valore ){
					$riga[$chiave]=html_entity_decode($valore);
				}

				echo json_encode($riga);
			}
			else{
				$not_found = array("filtro1"=>" ", "filtro2"=>" ","filtro3"=>" ","filtro4"=>" ");
				echo json_encode($not_found);
			}

			//free result
			$result->close();
			//close connection
			$conn->close();
        }
    ?>