$(document).ready(function() {
    $.ajax({
        method: "POST",
        dataType: "json",
        crossDomain: true,
        url: "php/indice_smart_life.php",
        data: {
            id_device: getVariableFromPosition(2),//terza variabile => ID del device
        },
        success: function(response) {
            var nome_smart_life="";
            for (var i in response){
                nome_smart_life = ""+response[i].nome;
                if(nome_smart_life!="undefined"){
                    $("#smart-list").append("<li>Servizio Smart Life -> <a href='topic-sl.html?gruppo=Smart Life&categoria="+response[i].categoria+"&nome="+nome_smart_life+"'>"+nome_smart_life+"</a></li>");
                }
            }  
        },
        error: function(request, error) {
            console.log(request + ":" + error);
        }
    });
    
    return false;
});