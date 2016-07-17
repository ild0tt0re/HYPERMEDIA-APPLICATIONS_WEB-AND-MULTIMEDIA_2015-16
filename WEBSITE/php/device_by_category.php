<?php
        if($_SERVER["REQUEST_METHOD"]=="POST"){
            $categoria=isset($_POST["categoria"])?$_POST["categoria"]:null;
			if($categoria == null){
				die();
			}
			
			//connessione al DataBase
			$conn=new mysqli("localhost","3110366","","my_hyp2016abate7annunziata");
			//$conn=new mysqli("localhost","root","","mytim");
			//controllo avvenuta connessione
			if(mysqli_connect_errno()){
				$errore = array("marca"=>"Problema DataBase", "nome"=>" ","image"=>" ","prezzo"=>-1,"rate"=>-1,"vecchio_prezzo"=>-1);
				die ( json_encode($errore) );
			}
			
			//sistemo la stringa $categoria per inserirla nella query
			$categoria = $conn->real_escape_string( htmlentities($categoria) );
			
			//prendo i dati dalla tabella device
			$query="select id_device, filtro, marca, nome, image, prezzo, rate, vecchio_prezzo from device where categoria='$categoria'";
			$result=$conn->query($query);
			
			if($result->num_rows > 0){
				$array_righe = array();
				
				while($riga=$result->fetch_array(MYSQL_ASSOC)){
					$array_righe[] = $riga;
				}
				echo json_encode($array_righe);//esporta in json
			}
			else{
				$not_found = array("marca"=>" ", "nome"=>" ","image"=>" ","prezzo"=>0,"rate"=>0,"vecchio_prezzo"=>0);
				echo json_encode($not_found);
			}

			//free result
			$result->close();
			//close connection
			$conn->close();
        }
    ?>