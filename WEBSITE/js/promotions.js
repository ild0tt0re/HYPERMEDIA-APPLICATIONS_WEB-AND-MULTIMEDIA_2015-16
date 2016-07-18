$(document).ready(function() {
    var i;
    var counter=0;
    //ajax call for the devices in promotions
    $.ajax({
        method: "POST",
        dataType: "json",
        crossDomain: true,
        url: "php/devices_in_promotion.php",
        
        success: function(response) {

            for (i in response){
                $(".thumbnail a img").eq(counter).attr("src",""+response[i].image);
                $(".thumbnail a").eq(counter).attr("href","topic-device.html?gruppo=Prodotti&categoria="+response[i].categoria+"&id="+response[i].id_device);
                
                $(".caption h4").eq(counter).html(""+response[i].marca+" "+response[i].nome);
                var rate = "";
                if (response[i].rate != null){
                    rate=" a rate di "+response[i].rate+"€/mese"
                }
                $(".caption p").eq(counter).html("<span class='scontato' >"+response[i].vecchio_prezzo+"</span> "+response[i].prezzo+rate);
                $(".caption a").eq(counter).attr("href","topic-device.html?gruppo=Prodotti&categoria=Smartphone e Telefoni&id="+response[i].id_device);
                counter++;
            }

        },
        error: function(request, error) {
            console.log(request + ":" + error);
        }
    });
    
    //ajax call for the smart life services in promotion
    $.ajax({
        method: "POST",
        dataType: "json",
        crossDomain: true,
        url: "php/smart_life_in_promotion.php",
        
        success: function(response) {

            for (i in response){
                $(".thumbnail a img").eq(counter).attr("src",""+response[i].image_sl);
                $(".thumbnail a").eq(counter).attr("href","topic-sl.html?gruppo=Smart Life&categoria="+response[i].categoria_sl+"&nome="+response[i].nome_sl);
                
                $(".caption h4").eq(counter).html(""+response[i].nome_sl);
                $(".caption p").eq(counter).html(""+response[i].descrizione_offerta);
                $(".caption a").eq(counter).attr("href","topic-sl.html?gruppo=Smart Life&categoria="+response[i].categoria_sl+"&nome="+response[i].nome_sl);
                counter++;
            }

//            for(var k=counter ; k<5;k++){
//                $(".panel.panel-default").eq(k).hide();
//            }

        },
        error: function(request, error) {
            console.log(request + ":" + error);
        }
    });

    return false;
});