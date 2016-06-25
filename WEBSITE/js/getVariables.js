//Restituisce un array contenente le "variabili del GET": [ "variabile1=valore1", "variabile2=valore2", ... ]
function getVariables() {
    var url = window.location.href;
    var question_mark = url.split("?",2);
    //nuova parte
    question_mark[1] = question_mark[1].replace(/%20/g, " ");
    var variables= question_mark[1].split("&");
    return variables; 
}

//restituisce la variabile del get in posizione position (position=0 => prima variabile del get , 1=>seconda variabile ....)
function getVariableFromPosition( position ){
    var array_variabili=getVariables();
    var variabile_del_get = array_variabili[position].split("=",2);
    return variabile_del_get[1];
}
