$("document").ready(function() {
    $.ajax({
        method: "POST",
        dataType: "json",
        crossDomain: true,
        url: "php/indice_assistenze.php",
        data: {
            id_device: variabile_id(),
        },
        success: function(response) {
            for (var i in response){
                $("#assistenza-list").append("<li>Servizio di Assistenza -> "+response[i].nome_assistenza+"</li>");
                //TO DO link verso l'assistenza corretta
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