$("document").ready(function() {
    $.ajax({
        method: "POST",
        dataType: "json",
        crossDomain: true,
        url: "php/device.php",
        data: {
            id: variabile_id(),
        },
        success: function(response) {
            $("img.media-object").attr("src",response['image']);
            $("h3.media-heading").html(""+response['marca']+" "+response['nome']);
            $("#caratteristiche").html(""+response['caratteristiche']);
            $("#prezzo").html(creaPrezzo(response['vecchio_prezzo'],response['prezzo'],response['rate']));
            $("#home").html(response['descrizione']);
            $("#profile").html(response['specifiche']);            
        },
        error: function(request, error) {
            $(".risultato").html("SONO IN ERROR");//da togliere
            console.log(request + ":" + error);
        }
    });
    return false;
});

function variabile_gruppo(){
    var array_variabili=getVariables();
    var variabile_del_get = array_variabili[0].split("=",2);
    return variabile_del_get[1];
}

function variabile_categoria() {
    var array_variabili=getVariables();
    var variabile_del_get = array_variabili[1].split("=",2);
    return variabile_del_get[1];
}

function variabile_id() {
    var array_variabili=getVariables();
    var variabile_del_get = array_variabili[2].split("=",2);
    return variabile_del_get[1];
}

function creaPrezzo(vecchio_prezzo, prezzo, rate){
    var stringa_prezzo="";
    if (vecchio_prezzo != ""){
        stringa_prezzo+="<span class='scontato'>"+vecchio_prezzo+"€</span> ";
    }
    
    stringa_prezzo+=""+prezzo+"€ ";
    
    if(rate != ""){
        stringa_prezzo+=" a rate di "+rate+"€/mese";
    }
    
    return stringa_prezzo;
}