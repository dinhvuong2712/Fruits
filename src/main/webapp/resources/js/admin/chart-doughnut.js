
ctx = document.getElementById('revenueSources');
let labelsPie = [
    'Red',
    'Blue',
    'Yellow'
];
let dataPie = [68, 10, 22];
let backgroundColor = [
    'rgb(255, 99, 132)',
    'rgb(54, 162, 235)',
    'rgb(255, 205, 86)'
];
const dataDoughnut = {
    labels: labelsPie,
    datasets: [{
        label: 'My First Dataset',
        data: dataPie,
        backgroundColor: backgroundColor,
        hoverOffset: 4
    }]
}

drawDoughnutChart = () => {
    var myChart = new Chart(ctx.getContext('2d'), {
        type: 'doughnut',
        data: dataDoughnut,
        options: {
            maintainAspectRatio: false,
            plugins: {
                tooltip: {
                    backgroundColor: "rgba(0,0,0,.7)",
                    bodyColor: "#fff",
                    borderColor: '#dddfeb',
                    borderWidth: 1,
                    padding: 15,
                    displayColors: false,
                    caretPadding: 10,
                },
                legend: {
                    display: false,
                },
            },
            cutout: 80,
        }
    });
}


$(document).ready(function () {
    for (var i = 0; i <labelsPie.length; i++) {
        $('#listFlushPie').append(
            '<div class="item-list d-flex justify-content-between align-items-center border-bottom py-2">'+
            '<div class="infor d-flex align-items-center">'+
            '<svg class="color-pie rounded-circle" style="width: 12px; height: 12px;background-color: '+ backgroundColor[i] +';"></svg>'+
            '<span class="px-2">'+ labelsPie[i] +'</span>'+
            '</div>'+
            '<div class="percent">'+ dataPie[i] +'%</div>'+
            '</div>'
        );
    }
});

if (ctx != null) {
    drawDoughnutChart()
}else{
    console.warn("Can not find element");
}