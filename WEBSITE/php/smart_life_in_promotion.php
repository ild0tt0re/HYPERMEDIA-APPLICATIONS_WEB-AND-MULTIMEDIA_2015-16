<?php
        if($_SERVER["REQUEST_METHOD"]=="POST"){
			//connessione al DataBase
			$conn=new mysqli("localhost","3110366","","my_hyp2016abate7annunziata");
			//$conn=new mysqli("localhost","root","","mytim");
			//controllo avvenuta connessione
			if(mysqli_connect_errno()){
				$errore = array("nome_sl"=>"Problema DataBase", "descrizione_offerta"=>" ", "categoria_sl"=>" ", "image_sl"=>" ");
				die ( json_encode($errore) );
			}
			
			//prendo i dati dal JOIN delle tabelle sl_in_promozione e smart_life
			$query="SELECT sl_in_promozione.nome_sl AS nome_sl, sl_in_promozione.descrizione_offerta AS descrizione_offerta, smart_life.categoria AS categoria_sl, smart_life.image AS image_sl FROM sl_in_promozione JOIN smart_life ON sl_in_promozione.nome_sl=smart_life.nome";
			$result=$conn->query($query);
			
			if($result->num_rows > 0){
				$array_righe = array();
				
				while($riga=$result->fetch_array(MYSQL_ASSOC)){
					$array_righe[] = $riga;
				}
				echo json_encode($array_righe);//esporta in json
			}
			else{
				$not_found = array("nome_sl"=>" ",  "descrizione_offerta"=>" ", "categoria_sl"=>" ", "image_sl"=>" ");
				echo json_encode($not_found);
			}

			//free result
			$result->close();
			//close connection
			$conn->close();
        }
    ?>