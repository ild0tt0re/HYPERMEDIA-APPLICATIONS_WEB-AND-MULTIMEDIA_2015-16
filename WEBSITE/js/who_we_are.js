$(document).ready(function () {

    //handle active-menu item
    $('.menu-left [data-toggle="tab"]').on('click', '', function () {
        $('.menu-left [data-toggle="tab"]').removeClass('active');
        $(this).addClass('active');

        //set right header
        var attr = $(this).attr('href');
        if (typeof attr !== typeof undefined && attr !== false) {
            if (attr === "#innovation") {
                $('#header').attr('src', 'img/header/wwa1-header.jpg');
                $('#titolo').text('TIM e il futuro');
                $('#intro_banner').text('Il futuro firmato TELECOM ITALIA')

            } else if (attr === "#testimonials") {
                $('#header').attr('src', 'img/header/wwa2-header.jpg');
                $('#titolo').text('Testimonial');
                $('#intro_banner').text('Le loro opinioni su di noi')

            } else if (attr === "#projects") {
                $('#header').attr('src', 'img/header/wwa3-header.jpg');
                $('#titolo').text('Progetti');
                $('#intro_banner').text('I nostri progetti innovativi')

            } else if (attr === "#contact-us") {
                $('#header').attr('src', 'img/header/wwa4-header.jpg');
                $('#titolo').text('Contattaci');
                $('#intro_banner').text('Vieni a trovarci, ti aspettiamo')
            }
        }
    });
});
