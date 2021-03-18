$(".flatpickr-input").flatpickr({
    altInput: true,
    altFormat: "d-m-Y",
    dateFormat: "d-m-Y",
    "locale": {
        "firstDayOfWeek": 1 // start week on Monday
    }
});
var fp = $(".flatpickr-input");
$.each( fp, function( key, value ) {
    var c = $(value).removeAttr('readonly');
});

var a = $('.flatpickr-weekday');
$.each( a, function( key, value ) {
    var b = {
        'Mon': 'T2',
        'Tue': 'T3',
        'Wed': 'T4',
        'Thu': 'T5',
        'Fri': 'T6',
        'Sat': 'T7',
        'Sun': 'CN',
    };
    var c = $(value).text();
    $(value).text(b[$(value).text().trim()]);
});

var m = $('.flatpickr-monthDropdown-month');
$.each( m, function( key, value ) {
    var b = {
        'January': 'Tháng 1',
        'February': 'Tháng 2',
        'March': 'Tháng 3',
        'April': 'Thàng 4',
        'May': 'Tháng 5',
        'June': 'Tháng 6',
        'July': 'Tháng 7',
        'August': 'Tháng 8',
        'September': 'Tháng 9',
        'October': 'Tháng 10',
        'November': 'Tháng 11',
        'December': 'Tháng 12',
    };
    var c = $(value).text();
    $(value).text(b[$(value).text().trim()]);
});