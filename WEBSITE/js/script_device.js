$("document").ready(function() {
    $.ajax({
        method: "POST",
        dataType: "json",
        crossDomain: true,
        url: "php/device.php",
        data: {
            id: getVariableFromPosition(2),//terza variabile del GET => ID del device
        },
        success: function(response) {
            var device=""+response['marca']+" "+response['nome'];
            $(".breadcrumb li:eq(1) a").html(""+getVariableFromPosition(1));
            $(".breadcrumb li:eq(1) a").attr("href","mgot.html?gruppo="+getVariableFromPosition(0)+"&categoria="+getVariableFromPosition(1));
            $(".breadcrumb li:eq(2) a").html(device);
            $("img.media-object").attr("src",response['image']);
            $("h3.media-heading").html(device);
            
            var field="";
            for (var i=1;i<=4;i++){
                field="caratteristica"+i;
                if (response[field] != ""){
                    $("#features").append("<li>"+response[field]+"</li>");
                }
                
                field="titolo_descrizione"+i;
                if (response[field] != ""){
                    $("#home").append("<h4>"+response[field]+"</h4><p>"+response['descrizione'+i]+"</p>");
                }
                
            }
            $("#prezzo").html(creaPrezzo(response['vecchio_prezzo'],response['prezzo'],response['rate']));
            
            for (var i=1;i<=11;i++){
                field="nome_specifica"+i;
                if (response[field] != ""){
                    $(".table-striped").append("<tr><th>"+response[field]+"</th><td>"+response['specifica'+i]+"</td></tr>");
                }
                
            }
                        
        },
        error: function(request, error) {
            console.log(request + ":" + error);
        }
    });
    return false;
});

function creaPrezzo(vecchio_prezzo, prezzo, rate){
    var stringa_prezzo="";
    if (vecchio_prezzo != ""){
        stringa_prezzo+="<span class='scontato'>"+vecchio_prezzo+"€</span> ";
    }
    
    stringa_prezzo+=""+prezzo+"€ ";
    
    if(rate != ""){
        stringa_prezzo+=" a rate di "+rate+"€/mese";
    }
    
    return stringa_prezzo;
}