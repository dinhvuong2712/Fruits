$(document).ready(function () {

    $("#toggler-sidebar").click(sidebar);
    $("#toggler-sidebar-2").click(sidebar);

});

toggle = (element) => {
    $(element).toggleClass('active');
}
sidebar = () => {
    toggle('#sidebar');
    toggle('main .content');
    toggle('main .footer');
    toggle("#toggler-sidebar");
}

