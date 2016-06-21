$("document").ready(function() {
    var i;
    var categorie = new Array(5);
    var immagini_categorie= new Array(5);
    var intro_categorie = new Array(5);
    //var icone_categorie = new Array(5);
    
    $.ajax({
        method: "POST",
        dataType: "json",
        crossDomain: true,
        url: "php/gruppo.php",
        data: {
            gruppo: variabile_get(),
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
            }
            for(i=0;i<categorie.length;i++){
                $("#image"+(i+1)).attr("src",immagini_categorie[i]);
                $(".link"+(i+1)).attr("href","group-of-topic.html?gruppo="+nome_gruppo+"&categoria="+categorie[i]);
                $(".categoria"+(i+1)).html(""+categorie[i]);
                $("#intro"+(i+1)).html(""+intro_categorie[i]);
            }
            
        },
        error: function(request, error) {
            console.log(request + ":" + error);
        }
    });
    return false;
});

function variabile_get() {
    var array_variabili=getVariables();
    var variabile_del_get = array_variabili[0].split("=",2);
    return variabile_del_get[1];
//    var url = window.location.href;
//    var question_mark = url.split("?",2);
//    var and_simbol= question_mark[1].split("&");
//    var variable=and_simbol[0].split("=",2);
//    console.log("Variable: "+variable[0]+" Value: "+variable[1]);
//    return variable[1];
}

/*
Esempio di riferimento

$(document).ready(documentReady);

function documentReady(){
    console.log("I'm ready");

    $(".loadmore").on("click",loadMoreClicked);

}


function loadMoreClicked(){

    console.log("You clicked load more");
    
    var id=$(".loadmore").attr("id");
    
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "getDescription.php", //Relative or absolute path to file.php file
        data: {pt:id},
        success: function(response) {
            $(".contents").html(" "+response);
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });
}

*/






