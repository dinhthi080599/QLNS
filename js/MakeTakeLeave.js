$(".flatpickr-input").flatpickr({
    altInput: true,
    altFormat: "d-m-Y",
    dateFormat: "d-m-Y",
    "locale": {
        "firstDayOfWeek": 1 // start week on Monday
    }
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

// !(function (o) {
//     "use strict";
//     function t() {}
//     (t.prototype.initCustomSelect = function () {
//     }),
//         (t.prototype.initMultiSelect = function () {
//             0 < o('[data-plugin="multiselect"]').length && o('[data-plugin="multiselect"]').multiSelect(o(this).data());
//         }),
//         (t.prototype.initFlatpickr = function () {
//             o("#basic-datepicker").flatpickr(),
//                 o("#datetime-datepicker").flatpickr({ enableTime: !0, dateFormat: "d-m-Y H:i" }),
//                 o("#humanfd-datepicker").flatpickr({ altInput: !0, altFormat: "F j, Y", dateFormat: "d-m-Y" }),
//                 o("#minmax-datepicker").flatpickr({ minDate: "2020-01", maxDate: "2020-03" }),
//                 o("#disable-datepicker").flatpickr({
//                     onReady: function () {
//                         this.jumpToDate("2025-01");
//                     },
//                     disable: ["2025-01-10", "2025-01-21", "2025-01-30", new Date(2025, 4, 9)],
//                     dateFormat: "d-m-Y",
//                 }),
//                 o("#multiple-datepicker").flatpickr({ mode: "multiple", dateFormat: "d-m-Y" }),
//                 o("#conjunction-datepicker").flatpickr({ mode: "multiple", dateFormat: "d-m-Y", conjunction: " :: " }),
//                 o("#range-datepicker").flatpickr({ mode: "range" }),
//                 o("#inline-datepicker").flatpickr({ inline: !0 }),
//                 o("#basic-timepicker").flatpickr({ enableTime: !0, noCalendar: !0, dateFormat: "H:i" }),
//                 o("#24hours-timepicker").flatpickr({ enableTime: !0, noCalendar: !0, dateFormat: "H:i", time_24hr: !0 }),
//                 o("#minmax-timepicker").flatpickr({ enableTime: !0, noCalendar: !0, dateFormat: "H:i", minDate: "16:00", maxDate: "22:30" }),
//                 o("#preloading-timepicker").flatpickr({ enableTime: !0, noCalendar: !0, dateFormat: "H:i", defaultDate: "01:45" });
//         }),
//         (t.prototype.initColorpicker = function () {
//         }),
//         (t.prototype.initTouchspin = function () {
//             var a = {};
//             o('[data-toggle="touchspin"]').each(function (t, i) {
//                 var e = o.extend({}, a, o(i).data());
//                 o(i).TouchSpin(e);
//             });
//         }),
//         (t.prototype.init = function () {
//             this.initCustomSelect(), this.initMultiSelect(), this.initFlatpickr(), this.initColorpicker(), this.initTouchspin();
//         }),
//         (o.Components = new t()),
//         (o.Components.Constructor = t);
// })(window.jQuery),
//     (function () {
//         "use strict";
//         window.jQuery.Components.init();
//     })();