<?php
        if($_SERVER["REQUEST_METHOD"]=="POST"){
            $marca=$_POST["marca"];
            $nome=$_POST["nome"];
			
			//connessione al DataBase
			//$conn=new mysqli("localhost","prova","ciaocane","prima_prova");
			$conn=new mysqli("localhost","root","","mytim");
			//controllo avvenuta connessione
			if(mysqli_connect_errno()){
				$errore = array("marca"=>"Device non presente", "nome"=>"Device non presente","specifiche"=>"Device non presente");
				echo json_encode($errore);
				exit();
			}
			
			//prendo i dati del device
			$query="select marca,nome,image,caratteristiche,prezzo,vecchio_prezzo,descrizione,specifiche from device where marca='$marca' and nome='$nome'";
			$result=$conn->query($query);
			
			if($result->num_rows > 0){
				//ho una sola riga della tabella device che ha $marca e $nome specificati
				$riga=$result->fetch_array(MYSQL_ASSOC);
				echo json_encode($riga);//esporta in json
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