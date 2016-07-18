$(document).ready(function() {
    $.ajax({
        method: "POST",
        dataType: "json",
        crossDomain: true,
        url: "php/assistenza.php",
        data: {
            nome_assistenza: getVariableFromPosition(2),//terza variabile del GET => nome del servizio di Assistenza
        },
        success: function(response) {
            var categoria=""+getVariableFromPosition(1);
            var nome_assistenza=""+getVariableFromPosition(2);
            $(".breadcrumb li:eq(1) a").html(categoria);
            $(".breadcrumb li:eq(1) a").attr("href","mgot-no-filter.html?gruppo=Assistenza&categoria="+categoria);
            $(".breadcrumb li:eq(2) a").html(nome_assistenza);
            
            $("#assistance-title").html("Assistenza "+response['nome']);
           
            $("#description-title").html(""+response['titolo_descrizione']);
            $("#description-text").html(""+response['descrizione']);
            
            var list_element="";
            for (var i=1;i<=4;i++){
                list_element="punto"+i;
                if (response[list_element] != ""){
                    $("#description-list").append("<li>"+response[list_element]+"</li>")
                }
            }
            
            $("#intro-devices-title").html(""+response['titolo_intro_device']);
            $("#intro-devices").html(""+response['intro_device']);
            $("#link-for-devices").html(""+response['link_for_devices']);
            $("#link-for-devices").attr("href","transition-act.html?gruppo=Assistenza&categoria="+categoria+"&nome="+nome_assistenza+"&fordevices="+response['link_for_devices']);
        },
        error: function(request, error) {
            console.log(request + ":" + error);
        }
    });
    return false;
});