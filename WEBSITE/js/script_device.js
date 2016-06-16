$("document").ready(function() {
    var query_result;
    var id_device;
    $.ajax({
        method: "POST",
        dataType: "json",
        crossDomain: true,
        url: "php/device.php",
        data: {
            marca: "Decoder",
            nome: "TIMvision"
        },
        success: function(response) {
            id_device=response['id_device'];
            $("img").attr("src",response['image']);
            $("#titolo").append(""+response['marca']);
            $("#titolo").append(" "+response['nome']);
            $("#caratteristiche").append(""+response['caratteristiche']);
            $("#descrizione").append(response['descrizione']);
            $("#specifiche").append(response['specifiche']);
            
            $(".risultato").html("sono in success");//da togliere
            
        },
        error: function(request, error) {
            $(".risultato").html("SONO IN ERROR");//da togliere
            console.log(request + ":" + error);
        }
    });
    return false;
});



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






