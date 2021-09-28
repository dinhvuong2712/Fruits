$(document).ready(function () {
    $(window).on('load',function () {
        $('.date-default').val(currentDate());
        defaultImage();
        setGender();
    })
});

getGender = (isMale) => {
    if(Boolean(isMale)){
        return 'Nam';
    }
    return 'Nữ';
}

currentDate = () => {
    return new Date().toJSON().slice(0,10);
}

openFile = () => {
    $('#ImgChange').click();
}

defaultImage = () => {
    $("#ImgChange").change( function (evt) {
        var tgt = evt.target || window.event.srcElement,
            files = tgt.files;
    
        // FileReader support
        if (FileReader && files && files.length) {
            var fr = new FileReader();
            fr.onload = function () {
                document.getElementById("ImgDefault").src = fr.result;
            }
            fr.readAsDataURL(files[0]);
        }
    
        // Not supported
        else {
            // fallback -- perhaps submit the input to an iframe and temporarily store
            // them on the server until the user's session ends.
        }
    });
}

setGender = () => {
    var condition = $('#flexRadioDefault1').data('gender');
    if(Boolean(condition)){
        return $('#flexRadioDefault1').prop('checked',true);
    }
    $('#flexRadioDefault2').prop('checked',true);
}