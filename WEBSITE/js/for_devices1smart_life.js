function loadForDevicesSmartLife(){
    $(document).ready(function() {
        var i;
        var contatore=1;

        $.ajax({
            method: "POST",
            dataType: "json",
            crossDomain: true,
            url: "php/for_device1sl.php",
            data: {
                nome_smart_life: getVariableFromPosition(2),//terza variabile del GET => nome_smart_life
            },
            success: function(response) {
                //gruppo
                $(".breadcrumb li:eq(0) a").html(getVariableFromPosition(0));
                $(".breadcrumb li:eq(0) a").attr("href","got.html?gruppo=Smart Life");
                //categoria
                var nome_categoria = "";
                nome_categoria+=getVariableFromPosition(1);
                $(".breadcrumb li:eq(1) a").html(nome_categoria);
                $(".breadcrumb li:eq(1) a").attr("href","mgot-no-filter.html?gruppo=Smart Life&categoria="+nome_categoria);
                //nome assistenza
                var nome_assistenza = "";
                nome_assistenza+=getVariableFromPosition(2);
                $(".breadcrumb li:eq(2) a").html(nome_assistenza);
                $(".breadcrumb li:eq(2) a").attr("href","topic-sl.html?gruppo=Smart Life&categoria="+nome_categoria+"&nome="+nome_assistenza);
                
                $(".breadcrumb li:eq(3) a").html(""+getVariableFromPosition(3));
                
                var link_device="topic-device.html?gruppo=Prodoti&categoria=";
                for (i in response){
                    $(".link"+contatore).attr("href",link_device+response[i].categoria+"&id="+response[i].id_device);
                    $("#nome"+contatore).html(""+response[i].marca+" "+response[i].nome);
                    $("#image"+contatore).attr("src",response[i].image);
                    $("#prezzo"+contatore).html(creaPrezzo(response[i].vecchio_prezzo,response[i].prezzo,response[i].rate));
                    $("#intro"+contatore).html(""+response[i].intro);
                    contatore++;

                }
                contatore--;

                for(var k=contatore ; k<9;k++){
                    $(".col-md-4.card").eq(k).hide();
                }

            },
            error: function(request, error) {
                console.log(""+getVariableFromPosition(2));
                console.log(request + ":" + error);
            }
        });

        return false;
    });
}

function creaPrezzo(vecchio_prezzo, prezzo, rate){
    var stringa_prezzo="";
    if (vecchio_prezzo != ""){
        stringa_prezzo+="<span class='scontato'>"+vecchio_prezzo+"€ </span>";
    }
    
    stringa_prezzo+=""+prezzo+"€ ";
    
    if(rate != ""){
        stringa_prezzo+=" a rate di "+rate+"€/mese";
    }
    
    return stringa_prezzo;
}


