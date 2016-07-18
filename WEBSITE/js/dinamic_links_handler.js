sessionStorage.setItem("id_device", getVariableFromPosition(2));
$("#go-on-link").hide();

$(document).ready(function() {
    if(sessionStorage.tipo_servizio=="Smart Life"){
        handlerSmartLife();
    }
    if(sessionStorage.tipo_servizio=="Assistenza"){
        handlerAssistenza();
    }
    return false;
});

function handlerSmartLife(){
    $.ajax({
        method: "POST",
        dataType: "json",
        crossDomain: true,
        url: "http://hyp2016abate7annunziata.altervista.org/php/go_on_transition_sl.php",
        data: {
            nome_smart_life: sessionStorage.servizio,
            id_device: getVariableFromPosition(2),//terza variabile del GET => ID del device
        },
        success: function(response) {
            if(typeof response[0]!="undefined"){
                $("#go-on-link").show();
                $("#go-on-link a").html("Altri Prodotti Smart Life - "+sessionStorage.servizio);
                $("#go-on-link a").attr("href","transition-act.html?gruppo=Smart Life&categoria="+response[0].categoria+"&nome="+sessionStorage.servizio+"&fordevices="+response[0].link_devices);                
            }
           
        },
        error: function(request, error) {
            console.log(request + ":" + error);
        }
    });
}

function handlerAssistenza(){
    $.ajax({
        method: "POST",
        dataType: "json",
        crossDomain: true,
        url: "http://hyp2016abate7annunziata.altervista.org/php/go_on_transition_assistance.php",
        data: {
            nome_assistenza: sessionStorage.servizio,
            id_device: getVariableFromPosition(2),//terza variabile del GET => ID del device
        },
        success: function(response) {
            if(typeof response[0]!="undefined"){
                $("#go-on-link").show();
                $("#go-on-link a").html("Altri Prodotti Assistenza - "+sessionStorage.servizio);
                $("#go-on-link a").attr("href","transition-act.html?gruppo=Assistenza&categoria="+response[0].categoria+"&nome="+sessionStorage.servizio+"&fordevices="+response[0].link_devices);
            }
        },
        error: function(request, error) {
            console.log(request + ":" + error);
        }
    });
}