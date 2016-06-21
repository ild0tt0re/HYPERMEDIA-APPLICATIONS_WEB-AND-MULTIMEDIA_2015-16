$("document").ready(function() {
    var i;
    var contatore=1;
    var attr_href;
    //var devices = new Array();
    
    $.ajax({
        method: "POST",
        dataType: "json",
        crossDomain: true,
        url: "php/device_by_category.php",
        data: {
            categoria: variabile_categoria(),
        },
        success: function(response) {
            var query_string="?gruppo="+variabile_gruppo()+"&categoria="+variabile_categoria()+"&id=";
            $(".breadcrumb li:eq(0) a").html(variabile_gruppo());
            var nome_categoria = "";
            nome_categoria+=variabile_categoria();
            $(".breadcrumb li:eq(1) a").html(nome_categoria);
            $("#titolo").html(nome_categoria.toUpperCase());
            //$("#intro_banner").html(""+response['intro_banner']);
            //$(".head-banner-right img").attr("src",response['banner']);
            //TO-DO gestione banner con tabella 
            for (i in response){
                attr_href=$(".link"+contatore).attr("href");
                $(".link"+contatore).attr("href",""+attr_href+query_string+response[i].id_device);
                $("#nome"+contatore).html(""+response[i].marca+" "+response[i].nome);
                $("#image"+contatore).attr("src",response[i].image);
                $("#prezzo"+contatore).html(creaPrezzo(response[i].vecchio_prezzo,response[i].prezzo,response[i].rate));
                contatore++;
                
            }
            
        },
        error: function(request, error) {
            console.log(request + ":" + error);
        }
    });
    
    return false;
});

function variabile_gruppo(){
    var array_variabili=getVariables();
    var variabile_del_get = array_variabili[0].split("=",2);
    return variabile_del_get[1];
}

function variabile_categoria() {
    var array_variabili=getVariables();
    var variabile_del_get = array_variabili[1].split("=",2);
    return variabile_del_get[1];
}

function creaPrezzo(vecchio_prezzo, prezzo, rate){
    var stringa_prezzo="";
    if (vecchio_prezzo != null){
        stringa_prezzo+="<span class='scontato'>"+vecchio_prezzo+"€ </span>";
    }
    
    stringa_prezzo+=""+prezzo+"€ ";
    
    if(rate != null){
        stringa_prezzo+=" a rate di "+rate+"€/mese";
    }
    
    return stringa_prezzo;
}


