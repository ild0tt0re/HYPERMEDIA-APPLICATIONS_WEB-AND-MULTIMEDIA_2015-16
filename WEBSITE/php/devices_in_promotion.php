<?php
        if($_SERVER["REQUEST_METHOD"]=="POST"){
			//connessione al DataBase
			$conn=new mysqli("localhost","3110366","","my_hyp2016abate7annunziata");
			//$conn=new mysqli("localhost","root","","mytim");
			//controllo avvenuta connessione
			if(mysqli_connect_errno()){
				$errore = array("categoria"=>"Problema DataBase", "marca"=>"Problema DataBase", "nome"=>" ","image"=>" ","prezzo"=>-1,"rate"=>-1,"vecchio_prezzo"=>-1);
				die ( json_encode($errore) );
			}
			
			//prendo i dati dalla tabella device (i device che hanno un valore per vecchio_prezzo diverso da NULL sono i prodotti in promozione)
			$query="SELECT id_device, categoria, marca, nome, image, prezzo, rate, vecchio_prezzo FROM device WHERE vecchio_prezzo IS NOT NULL";
			$result=$conn->query($query);
			
			if($result->num_rows > 0){
				$array_righe = array();
				
				while($riga=$result->fetch_array(MYSQL_ASSOC)){
					$array_righe[] = $riga;
				}
				echo json_encode($array_righe);//esporta in json
			}
			else{
				$not_found = array("categoria"=>" ","marca"=>" ", "nome"=>" ","image"=>" ","prezzo"=>0,"rate"=>0,"vecchio_prezzo"=>0);
				echo json_encode($not_found);
			}

			//free result
			$result->close();
			//close connection
			$conn->close();
        }
    ?>