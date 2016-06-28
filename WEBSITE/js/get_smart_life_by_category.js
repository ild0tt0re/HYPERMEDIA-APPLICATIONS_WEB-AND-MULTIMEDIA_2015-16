function loadSmartLife(){
    $("document").ready(function() {
        var i;
        var contatore=1;
        var attr_href;
        //var devices = new Array();

        $.ajax({
            method: "POST",
            dataType: "json",
            crossDomain: true,
            url: "php/smart_life_by_category.php",
            data: {
                categoria: getVariableFromPosition(1),//seconda variabile del GET => categoria
            },
            success: function(response) {
                var query_string="?gruppo="+getVariableFromPosition(0)+"&categoria="+getVariableFromPosition(1)+"&id=";
                $(".breadcrumb li:eq(0) a").html(getVariableFromPosition(0));
                $(".breadcrumb li:eq(0) a").attr("href","got.html?gruppo="+getVariableFromPosition(0));
                var nome_categoria = "";
                nome_categoria+=getVariableFromPosition(1);
                $(".breadcrumb li:eq(1) a").html(nome_categoria);

                for (i in response){
    //                attr_href=$(".link"+contatore).attr("href");
    //                $(".link"+contatore).attr("href",""+attr_href+query_string+response[i].id_device);
                    $("#nome"+contatore).html(""+response[i].nome);
                    $("#image"+contatore).attr("src",response[i].image);
                    $("#intro"+contatore).html(""+response[i].intro);
                    contatore++;

                }
                contatore--;

                for(var k=contatore ; k<9;k++){
                    $(".col-md-6.card").eq(k).hide();
                }

            },
            error: function(request, error) {
                console.log(request + ":" + error);
            }
        });

        return false;
    });
}