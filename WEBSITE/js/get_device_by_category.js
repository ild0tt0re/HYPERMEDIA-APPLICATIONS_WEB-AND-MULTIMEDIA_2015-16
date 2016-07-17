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
            categoria: getVariableFromPosition(1),//seconda variabile del GET => categoria
        },
        success: function(response) {
            var query_string="?gruppo="+getVariableFromPosition(0)+"&categoria="+getVariableFromPosition(1)+"&id=";
            $(".breadcrumb li:eq(0) a").html(getVariableFromPosition(0));
            var nome_categoria = "";
            nome_categoria+=getVariableFromPosition(1);
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
                $(".col-md-4.card").eq(contatore-1).addClass(""+response[i].filtro);
                contatore++;
                
            }
            contatore--;
            
            for(var k=contatore ; k<9;k++){
                $(".col-md-4.card").eq(k).hide();
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
    if (vecchio_prezzo != null){
        stringa_prezzo+="<span class='scontato'>"+vecchio_prezzo+"€ </span>";
    }
    
    stringa_prezzo+=""+prezzo+"€ ";
    
    if(rate != null){
        stringa_prezzo+=" a rate di "+rate+"€/mese";
    }
    
    return stringa_prezzo;
}


$.each