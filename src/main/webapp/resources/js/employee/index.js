$(document).ready(function () {
    $(window).on('load', function () {

        $("#employee-all tbody tr td .del").click(function () {
            var result = confirm("Do u want to del this item?");
            if(result){
                window.location.assign($(this).attr("datasrc"));
            }
        })
        var gender = $("#employee-all tbody tr .gender");
        for (let i = 0; i < gender.length; i++) {
            gender.eq(i).text(getGender(gender.eq(i).text()));
        }

    });
});