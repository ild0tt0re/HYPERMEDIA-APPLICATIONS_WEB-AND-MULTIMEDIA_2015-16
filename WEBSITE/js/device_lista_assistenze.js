$(document).ready(function() {
    $.ajax({
        method: "POST",
        dataType: "json",
        crossDomain: true,
        url: "http://hyp2016abate7annunziata.altervista.org/php/indice_assistenze.php",
        data: {
            id_device: getVariableFromPosition(2),
        },
        success: function(response) {
            var nome_assistenza="";
            for (var i in response){
                nome_assistenza=""+response[i].nome;
                if (nome_assistenza!="undefined"){
                    $("#assistenza-list").append("<li>Servizio di Assistenza -> <a href='topic-assistance.html?gruppo=Assistenza&categoria="+response[i].categoria+"&nome="+nome_assistenza+"'>"+nome_assistenza+"</a></li>");
                }
            }  
        },
        error: function(request, error) {
            console.log(request + ":" + error);
        }
    });
    
    return false;
});