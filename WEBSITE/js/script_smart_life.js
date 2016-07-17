$("document").ready(function() {
    $.ajax({
        method: "POST",
        dataType: "json",
        crossDomain: true,
        url: "php/smart_life.php",
        data: {
            nome_smart_life: getVariableFromPosition(2),//terza variabile del GET => nome smart life
        },
        success: function(response) {
            $(".breadcrumb li:eq(1) a").html(""+getVariableFromPosition(1));
            $(".breadcrumb li:eq(1) a").attr("href","mgot-no-filter.html?gruppo="+getVariableFromPosition(0)+"&categoria="+getVariableFromPosition(1));
            $(".breadcrumb li:eq(2) a").html(""+response['nome']);
            $("#image-topic").attr("src",response['image_descrizione']);
            $(".sl-name").html(""+response['nome']);
            $("#topic-description").html(""+response['descrizione']);
            $("#string-price").html(""+response['stringa_prezzo']);
            $("#topic-content").html(response['contenuti']);
            $(".topic-sl section .media").css("background-image", 'url("' + response.image_contenuti + '")');
            
            $("#title-for-devices").html(""+response['titolo_devices']);
            $("#link-for-devices").html(""+response['link_devices'])
            $("#link-for-devices").attr("href","transition-act.html?gruppo=Smart Life&categoria="+getVariableFromPosition(1)+"&nome="+getVariableFromPosition(2)+"&fordevices="+response['link_devices']);
            //TO DO regole e attivazione
        },
        error: function(request, error) {
            console.log(request + ":" + error);
        }
    });
    return false;
});