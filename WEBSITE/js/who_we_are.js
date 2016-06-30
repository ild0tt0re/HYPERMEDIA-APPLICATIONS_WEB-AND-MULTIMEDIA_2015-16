$(document).ready(function (){

    $('[href=#innovation]').addClass('active');

    $('.menu-left [data-toggle="tab"]').on('click', '',function(){
        $('.menu-left [data-toggle="tab"]').removeClass('active');
        $(this).addClass('active');
    });

});
