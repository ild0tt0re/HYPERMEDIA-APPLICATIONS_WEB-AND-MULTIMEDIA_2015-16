$("document").ready(function() {
    $.ajax({
        method: "POST",
        dataType: "json",
        crossDomain: true,
        url: "php/indice_smart_life.php",
        data: {
            id_device: variabile_id(),
        },
        success: function(response) {
            for (var i in response){
                $("#smart-list").append("<li>Servizio Smart Life -> "+response[i].nome_smart_life+"</li>");
                //TO DO link verso il servizio Smart Life corretto
            }  
        },
        error: function(request, error) {
            console.log(request + ":" + error);
        }
    });
    
    return false;
});

function variabile_id() {
    var array_variabili=getVariables();
    var variabile_del_get = array_variabili[2].split("=",2);
    return variabile_del_get[1];
}