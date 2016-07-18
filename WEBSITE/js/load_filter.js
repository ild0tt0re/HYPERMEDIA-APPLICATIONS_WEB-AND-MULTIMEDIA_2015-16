$(document).ready(function() {
    $.ajax({
        method: "POST",
        dataType: "json",
        crossDomain: true,
        url: "php/load_filter.php",
        data: {
            categoria_device: getVariableFromPosition(1),//seconda variabile => Categoria device
        },
        success: function(response) {
            if(response.filtro1!=""){
                $("#filtro1 span").html(""+response.filtro1);   
            }
            else {
                $("#filtro1").hide();
            }
            
            if(response.filtro2!=""){
                $("#filtro2 span").html(""+response.filtro2); 
            }
            else {
                $("#filtro2").hide();
            }
            
            if (response.filtro3!=""){
                $("#filtro3 span").html(""+response.filtro3); 
            }
            else {
                $("#filtro3").hide();
            }
            
            if(response.filtro4!=""){
                $("#filtro4 span").html(""+response.filtro4);
            }
            else {
                $("#filtro4").hide();
            }
           
        },
        error: function(request, error) {
            console.log(request + ":" + error);
        }
    });
    
    return false;
});