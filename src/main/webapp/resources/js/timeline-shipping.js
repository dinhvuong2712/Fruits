$(document).ready(function () {
    loadData();
    setTimeout(function () {
        fetch("http://127.0.0.1:5500/js/j.json")
        .then(response => response.json())
        .then(data => loadProgress(data));
    },1000);
});

loadData = async () => {
    
}

loadProgress = (present) => {
    var progress;
    var count = 0;

    var marked = $(".progressContent div");
    var timeline = $('.progressContent .time');
    var p =  100 / (marked.length-1);

    for (let i = 0; i < marked.length; i++) {
        marked.eq(i).children().css({"left" : p*i + "%"});
        timeline.eq(i).css({'margin-top': 80 + 'px', 'font-size': 0.8 + 'em'});
        timeline.eq(i).prev().css({'margin-top': 50 + 'px'});
        timeline.eq(i).next().css({'width': 3.5 + 'em','height': 3.5 + 'em'});
        timeline.eq(i).next().children().css({'width': 2 + 'em','height': 2 + 'em'});
    }
    $('.progressContent').removeClass('d-none');

    for (var k in present) {
        if ($(".progressContent div").hasClass(k)) {
            if (present[k] == true) {
                progress = k;
                count++;
                $(".progressContent ." + k + " .time").removeClass("d-none");
                $(".progressContent ." + k + " h6 span.false").addClass("d-none");
                $(".progressContent ." + k + " h6 span.true").removeClass("d-none")
                $(".progressContent ." + k + " h6").removeClass("text-secondary").addClass("txt-green");
                $(".progressContent ." + k + " button").removeClass("btn-secondary").addClass("bg-green");

                continue;
            }else {
                $(".progressContent ." + k).addClass("false");
            }
        }
    }

    if (present["Cancelled"]) {
        $(".progressContent div.false").addClass("d-none");
        $(".progressContent div:last").addClass("d-none");
        $(".progressContent").append(
            '<div class="Cancelled d-flex flex-column">'+
            '<h6 class="position-absolute top-0 start-100 translate-middle txt-green text-nowrap"'+
               'style="margin-top: 50px;">Đã huỷ</span>'+
            '</h6>'+
            '<small class="time position-absolute top-0 start-100 translate-middle txt-gray-dark text-nowrap"'+
            'style="margin-top: 80px; font-size: .8em;">17-8-2021 / 08:17</small>'+
            '<button type="button"'+
                'class="position-absolute top-0 start-100 translate-middle btn btn-sm bg-green text-white rounded-pill d-flex justify-content-center p-1 align-items-center"'+
                'style="width:3.5em; height:3.5em;">'+
                '<img class="img-fluid" src="../asset/img/destroy.png" style="width:2em; height:2em;" alt=""></button>' +
            '</div > '
        );

        marked = $(".progressContent div:not(.d-none)");
        p =  100 / (marked.length-1);
        for (let i = 0; i < marked.length; i++) {
            marked.eq(i).children().css({"left" : p*i + "%"});
        }
        $(".progress .progress-bar").css({ "width": 100 +"%" });
        return;
    }
    var pre = $(".progressContent ." + progress + " button").css("left");

    $(".progress .progress-bar").css({ "width": pre });
}
