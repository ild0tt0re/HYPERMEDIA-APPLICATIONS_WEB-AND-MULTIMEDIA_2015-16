$(document).ready(function () {

    //handle active-menu item
    $('.menu-left [data-toggle="tab"]').on('click', '', function () {
        $('.menu-left [data-toggle="tab"]').removeClass('active');
        $(this).addClass('active');
    });
});
