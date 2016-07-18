$(document).ready(function() {
    $(".btn-default").on("click",handlerTutti);
    $("#filtro1 input:checkbox").change(handler1);
    $("#filtro2 input:checkbox").change(handler2);
    $("#filtro3 input:checkbox").change(handler3);
    $("#filtro4 input:checkbox").change(handler4);
});
      
function handlerTutti(event){
    location.reload();
}

function handler1(){
    var filtered_class=""+$("#filtro1 span").text();
    $("."+filtered_class).toggle();
}

function handler2(){
    var filtered_class=""+$("#filtro2 span").text();
    $("."+filtered_class).toggle();
}

function handler3(){
    var filtered_class=""+$("#filtro3 span").text();
    $("."+filtered_class).toggle();
}

function handler4(){
    var filtered_class=""+$("#filtro4 span").text();
    $("."+filtered_class).toggle();
}