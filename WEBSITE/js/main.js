$(document).ready(function () {
    /*
     key-control for carousel
     */
    $(document).on('keyup', function (e) {
        if (e.which == 39) {
            $('.carousel').carousel('next');
        }
        else if (e.which == 37) {
            $('.carousel').carousel('prev');
        }
    });
});