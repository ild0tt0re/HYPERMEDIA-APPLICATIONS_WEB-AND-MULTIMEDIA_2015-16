$("#go-on-link").hide();

$(document).ready(function() {
    goOnHandler();
    return false;
});

function goOnHandler(){
    $.ajax({
        method: "POST",
        dataType: "json",
        crossDomain: true,
        url: "php/go_on_assistance_device.php",
        data: {
            nome_assistenza: getVariableFromPosition(2),//terza variabile del GET => nome_assistenza
            id_device: sessionStorage.id_device,
        },
        success: function(response) {
            if(typeof response[0]!="undefined"){
                $("#go-on-link").show();
                $("#go-on-link a").html(""+response[0].tipo+" "+response[0].marca+" "+response[0].nome);
                $("#go-on-link a").attr("href","topic-device.html?gruppo=Prodotti&categoria="+response[0].categoria+"&id="+sessionStorage.id_device);
            }
        },
        error: function(request, error) {
            console.log(request + ":" + error);
        }
    });
}