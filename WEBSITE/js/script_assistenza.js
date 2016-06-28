$("document").ready(function() {
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
            var dispositivi_associati="Dispositivi associati"; //da rendere dinamico col DB
            $(".breadcrumb li:eq(1) a").html(categoria);
            $(".breadcrumb li:eq(1) a").attr("href","mgot-no-filter.html?gruppo=Assistenza&categoria="+categoria);
            $(".breadcrumb li:eq(2) a").html(nome_assistenza);
            
            $("#titolo").html("Assistenza "+response['nome']);
            $("#descrizione-assistenza").html(response['descrizione']);
            $("#dispositivi-associati").html(response['intro_device']);
            $("#link-for-devices").attr("href","transition-act.html?gruppo=Assistenza&categoria="+categoria+"&nome="+nome_assistenza+"&fordevices="+dispositivi_associati);
        },
        error: function(request, error) {
            console.log(request + ":" + error);
        }
    });
    return false;
});