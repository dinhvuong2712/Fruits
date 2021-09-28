$(document).ready(function () {
    $('section:first').css('margin-top', $('.header').height());
    // search bar
    $('#search').click(function (){
        toggle('#searchForm');
    });
    $('#button-search').click(function(){
        toggle('#searchForm');
    })
    $('#searchText').keyup(function () { 
        if ( $(this).val() != "" ){
            addClassActive('#searchForm button.backspace');
        }else{
            clearClassActive('#searchForm button.backspace');
        }
    });
    $('#searchForm button.backspace').click(function (){
        $('#searchText').val('');
        clearClassActive('#searchForm button.backspace');
    });
    // end search bar

    $("#fresh-deals").css("margin-button", "-" + $(this).find('.box:first .task-bar').height() + "px");

    // back forward
    
    $(".back-page").click(function () {
        window.history.back();
    })
});
// $(document).click(function (event) {
//     if (!$(event.target).closest('#searchForm').length) {
//         clearToggle('#searchForm');
//     }        
// });
$(document).scroll(function () {
    if($(this).scrollTop() > 0){
        addClassActive('.header');
        $('.header').css({'margin-top':"-" + $('.setting-wrapper').height() +'px'})
        return;
    }
    $('.header').css({'margin-top':0+'px'});
    clearClassActive('.header');
});
toggle = (element) => {
    $(element).toggleClass('active');
}
addClassActive = (element) => {
    $(element).addClass('active');
} 
clearClassActive = (element) => {
    $(element).removeClass('active');
}


