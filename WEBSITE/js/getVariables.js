//Restituisce un array contenente le "variabili del GET": [ "variabile1=valore1", "variabile2=valore2", ... ]
function getVariables() {
    var url = window.location.href;
    var question_mark = url.split("?",2);
    //nuova parte
    question_mark[1] = question_mark[1].replace(/%20/g, " ");
    var variables= question_mark[1].split("&");
    return variables;
    
/*  var and_simbol= question_mark[1].split("&");  
    var variable=and_simbol[0].split("=",2);
    return variable[1].replace(/%20/g, " ");*/
}
//getVariable();