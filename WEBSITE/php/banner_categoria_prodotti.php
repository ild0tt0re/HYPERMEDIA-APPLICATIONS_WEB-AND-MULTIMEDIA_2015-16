<?php
        if($_SERVER["REQUEST_METHOD"]=="POST"){
            $categoria_prodotti =isset($_POST["categoria_prodotti"])?$_POST["categoria_prodotti"]:null;
			
			if($categoria_prodotti==null){
				die();
			}
			//connessione al DataBase
			//$conn=new mysqli("localhost","prova","ciaocane","prima_prova");
			$conn=new mysqli("localhost","root","","mytim");
			//controllo avvenuta connessione
			if(mysqli_connect_errno()){
				$errore = array("banner"=>"DB Connection Problem", "intro_banner"=>" ");
				die( json_encode($errore) );
			}
			
			//preparo la variabile $categoria_prodotti per inserirla nella query
			$categoria_prodotti = $conn->real_escape_string( htmlentities($categoria_prodotti) );
	
			//prendo i dati dalla tabella banner_prodotti
			$query="SELECT banner, intro_banner FROM banner_prodotti WHERE categoria_prodotti='$categoria_prodotti'";
			$result=$conn->query($query);
			
			if($result->num_rows > 0){
				//ho una sola riga della tabella banner_prodotti che ha $categoria_prodotti specificata (è infatti la chiave primaria)
				$riga=$result->fetch_array(MYSQL_ASSOC);
				
				//decodifico i campi della tabella che contengono tag html codificati e/o caratteri speciali quali lettere accentate e apici
				foreach( $riga as $chiave=>$valore ){
					$riga[$chiave]=html_entity_decode($valore);
				}

				echo json_encode($riga);
			}
			else{
				$not_found = array("banner"=>"", "intro_banner"=>"");
				echo json_encode($not_found);
			}

			//free result
			$result->close();
			//close connection
			$conn->close();
        }
    ?>