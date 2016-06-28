$("document").ready(function() {
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
                $("#filtro1").append(""+response.filtro1);   
            }
            else {
                $("#filtro1").hide();
            }
            
            if(response.filtro2!=""){
                $("#filtro2").append(""+response.filtro2); 
            }
            else {
                $("#filtro2").hide();
            }
            
            if (response.filtro3!=""){
                $("#filtro3").append(""+response.filtro3); 
            }
            else {
                $("#filtro3").hide();
            }
            
            if(response.filtro4!=""){
                $("#filtro4").append(""+response.filtro4);
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