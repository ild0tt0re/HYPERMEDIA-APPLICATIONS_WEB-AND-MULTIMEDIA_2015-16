$("document").ready(function() {
    var i;
    var row;
    var counter=0;

    $.ajax({
        method: "POST",
        dataType: "json",
        crossDomain: true,
        url: "php/faq.php",
        data: {
            nome_assistenza: getVariableFromPosition(2),//terza variabile del GET => nome del servizio di Assistenza
        },
        success: function(response) {

            for (i in response){
                //console.log("i="+i+" domanda="+response[i].domanda+" risposta="+response[i].risposta);
                $(".text-panel-title").eq(counter).after(""+response[i].domanda);
                $(".panel-body-paragraph").eq(counter).html(""+response[i].risposta);
                row=response[i];
                for(var y=1;y<=5;y++){
                    if (row['punto'+y]!= ""){
                        $(".panel-body-list").eq(counter).append("<li>"+row['punto'+y]+"</li>");
                    }
                }
                counter++;
                
            }

            for(var k=counter ; k<5;k++){
                $(".panel.panel-default").eq(k).hide();
            }

        },
        error: function(request, error) {
            console.log(request + ":" + error);
        }
    });

    return false;
});