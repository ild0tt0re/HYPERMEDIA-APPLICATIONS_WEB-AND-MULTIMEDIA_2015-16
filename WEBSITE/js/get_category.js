$("document").ready(function() {
    var i;
    var categorie = new Array(5);
    var immagini_categorie= new Array(5);
    var intro_categorie = new Array(5);
    //var icone_categorie = new Array(5);
    var pagina;
    
    $.ajax({
        method: "POST",
        dataType: "json",
        crossDomain: true,
        url: "http://hyp2016abate7annunziata.altervista.org/php/gruppo.php",
        data: {
            gruppo: getVariableFromPosition(0),//prima variabile del get => nome del gruppo
        },
        success: function(response) {
            var nome_gruppo = "";
            nome_gruppo+=response['nome'];
            $(".breadcrumb li:eq(0) a").html(nome_gruppo);
            $("#titolo").html(nome_gruppo.toUpperCase());
            $("#intro_banner").html(""+response['intro_banner']);
            $(".head-banner-right img").attr("src",response['banner']);
            //TO-DO icone in alto (smartphone networking ecc...)
            for (i=0;i<categorie.length;i++){
                categorie[i]=response["categoria"+(i+1)];
                immagini_categorie[i]=response["image"+(i+1)];
                intro_categorie[i]=response["intro"+(i+1)];
                //$("ul.nav-justified li:eq(" +i+ ") span").addClass(""+response['icona'+(i+1)]);
                $(".icon"+i).addClass(""+response['icona'+(i+1)]);
            }
            
            if(nome_gruppo=="Prodotti"){
                pagina="mgot.html";
            }
            else{
                pagina="mgot-no-filter.html";
            }
            
            for(i=0;i<categorie.length;i++){
                if (immagini_categorie[i]!=""){
                    $("#image"+(i+1)).attr("src",immagini_categorie[i]);
                    $(".link"+(i+1)).attr("href",""+pagina+"?gruppo="+nome_gruppo+"&categoria="+categorie[i]);
                    $(".categoria"+(i+1)).html(""+categorie[i]);
                    $("#intro"+(i+1)).html(""+intro_categorie[i]);
                }
                else{
                    $(".categoria5").html(""+categorie[4]);
                    $(".col-md-6").eq(i).hide();//nascondo un elemento della classe .col-md-6 (sezione con immagine, categoria e introduzione)
                    //Nel gruppo assistenza nel DB per la categoria IN EVIDENZA è presente solo il campo intro corrispondente
                    //che va posizionato in un apposito <a id="in-evidenza"> </a>
                    if (intro_categorie[i]!=""){
                        $("#in-evidenza").html(""+intro_categorie[i]);
                        $("#in-evidenza").css("color","gray");
                    }
                }
            }
            
        },
        error: function(request, error) {
            console.log(request + ":" + error);
        }
    });
    return false;
});