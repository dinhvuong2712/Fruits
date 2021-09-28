$(document).ready(function () {
    $('#addConfirm').click(function () {
        add();
    })
})
function add() {
    $.ajax({
        method: "POST",
        url: "/admin/employee/addConfirmed",
        data: {
            FirstName : $('#FirstName').val(),
            LastName : $('#LastName').val(),
            Gender : $('#Gender').val(),
            Birth : $('#Birth').val(),
            Address : $('#Address').val(),
            PhoneNumber : $('#PhoneNumber').val(),
        },
        success: function (response) {
            console(response);
        }
    })
}