$("document").ready(function() {
    $.ajax({
        method: "POST",
        dataType: "json",
        crossDomain: true,
        url: "php/indice_smart_life.php",
        data: {
            id_device: getVariableFromPosition(2),//terza variabile => ID del device
        },
        success: function(response) {
            for (var i in response){
                console.log("categoria="+response[i].categoria+"  nome smart life= "+response[i].nome)
                $("#smart-list").append("<li>Servizio Smart Life -> "+response[i].nome+"</li>");
                //TO DO link verso il servizio Smart Life corretto
            }  
        },
        error: function(request, error) {
            console.log(request + ":" + error);
        }
    });
    
    return false;
});