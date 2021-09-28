
var ctx = document.getElementById('earningsOverview');

let labels = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
let data = [17000, 10000, 15000, 15000, 9000, 21000, 15000, 4000, 7000, 30000, 13000, 40000];
const dataLine = {
    labels: labels,
    datasets: [{
        lineTension: 0.3,
        backgroundColor: "rgba(78, 115, 223, 0.1)",
        borderColor: "rgba(78, 115, 223, 1)",
        pointRadius: 3,
        pointBackgroundColor: "rgba(78, 115, 223, 1)",
        pointBorderColor: "rgba(78, 115, 223, 1)",
        pointHitRadius: 10,
        pointBorderWidth: 2,
        fill: true,
        data: data,
    }],
};

number_format = (number, decimals, dec_point, thousands_sep) => {
    // *     example: number_format(1234.56, 2, ',', ' ');
    // *     return: '1 234,56'
    number = (number + '').replace(',', '').replace(' ', '');
    var n = !isFinite(+number) ? 0 : +number,
        prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
        sep = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep,
        dec = (typeof dec_point === 'undefined') ? '.' : dec_point,
        s = '',
        toFixedFix = function (n, prec) {
            var k = Math.pow(10, prec);
            return '' + Math.round(n * k) / k;
        };
    // Fix for IE parseFloat(0.55).toFixed(0) = 0;
    s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');
    if (s[0].length > 3) {
        s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
    }
    if ((s[1] || '').length < prec) {
        s[1] = s[1] || '';
        s[1] += new Array(prec - s[1].length + 1).join('0');
    }
    return s.join(dec);
}

drawLineChart = () => {
    var myChart = new Chart(ctx.getContext('2d'), {
        type: 'line',
        data: dataLine,
        options: {
            maintainAspectRatio: false,
            layout: {
                padding: {
                    left: 10,
                    right: 25,
                    top: 25,
                    bottom: 0
                }
            },
            scales: {
                xAxes: {
                    time: {
                        unit: 'date'
                    },
                    grid: {
                        display: false,
                        drawBorder: false
                    },
                    ticks: {
                        maxTicksLimit: 7
                    }
                },
                yAxes: {
                    ticks: {
                        maxTicksLimit: 5,
                        padding: 10,
                        // Include a dollar sign in the ticks
                        callback: function (value) {
                            return '$' + number_format(value);
                        }
                    },
                    grid: {
                        color: "rgb(234, 236, 244)",
                        tickColor: "rgb(234, 236, 244)",
                        drawBorder: false,
                        borderDash: [2],
                        tickBorderDash: [2]
                    }
                }
            },
            plugins: {
                tooltip: {
                    backgroundColor: "rgba(0, 0, 0, 0.7)",
                    bodyColor: "#fff",
                    titleMarginBottom: 6,
                    titleColor: '#fff',
                    borderColor: '#dddfeb',
                    borderWidth: 1,
                    padding: 20,
                    displayColors: false,
                    intersect: false,
                    mode: 'index',
                    caretPadding: 10,
                    callbacks: {
                        label: function (context) {
                            var label = context.dataset.label || '';

                            if (label) {
                                label += ': ';
                            }
                            if (context.parsed.y !== null) {
                                label += new Intl.NumberFormat('en-US', { style: 'currency', currency: 'USD' }).format(context.parsed.y);
                            }
                            return label;
                        }
                    }
                },
                legend: {
                    display: false,
                }
            },
        }
    });
}

if (ctx != null) {
    drawLineChart();
}else{
    console.warn("Can not find element");
}