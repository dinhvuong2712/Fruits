$(document).ready(function () {
    let imgSquare = '.img-square';
    $(imgSquare).each(function() {
        if ($(this).width() != $(this).height()) {
            const img_w = $(this).css("width");
            $(this).parent().css({"height":img_w}); 
        }
    });
});