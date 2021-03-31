$(document).ready(function(){
    $(document).on('click', '.time-working tr td:not(:first-child)', function(){
        var td = $(this).parent().children('td');
        var text = "";
        for (let i = 1; i < 4; i++) {
            text = $(td[i]).text();
            if (text != 'OFF') {
                time_start = text.substr(0, 5);
                time_end = text.substr(8, 9);
            } else {
                time_start = '00:00';
                time_end = '00:00';
            }
            input_time_start = $('[name^="tthoigianbatdau"]').get(i-1);
            input_time_end = $('[name^="tthoigiankethuc"]').get(i-1);
            $(input_time_start).val(time_start);
            $(input_time_end).val(time_end);
        }
        $('#time-working-modal').modal('show');
        return;
        var id =$(this).get(0).id;
        var thu = id.substr(3, 1); 
        var ca = id.substr(4, 1); 
        $('#sngaytrongtuan').val(thu);
        $('#ca').val(ca);
    });
    $('#working').on('change', function(){
        if ($(this).prop('checked')) {
            $('#label-working').text($(this).attr('data-on'));
        } else {
            $('#label-working').text($(this).attr('data-off'));
            $('[name="tthoigianbatdau"]').val('');
            $('[name="tthoigiankethuc"]').val('');
        }
    });
    $(document).on('click', '.media', function(){
        $('.loader-bg').fadeIn();
        var PartID = $(this).attr('data-part-id');
        var PartName = $(this).children().find('h4.PartName').text();
        $('.TitleTable').text('Thời gian làm việc bộ phận: ' + PartName);
        $('#fk_ibophanid').val(PartID);
        var data = {
            action: 'get_data',
            PartID: PartID,
        };
        $.ajax({
            method: "POST",
            data: data,
            dataType:'json',
            url: "/thoi-gian-lam-viec",
        }).done(function (res) {
            html = '';
            if (res.length >= 7) {
                $('#btn-save-event').hide();
            } else {
                $('#btn-save-event').show();
            }
            if (res.length != 0) {
                $.each(res, function( key, value ) {
                    let id = 'id-' + value.sNgayTrongTuan;
                    html += `
                        <tr>
                            <td class="text-center">` + value.sTenThu + `</td>
                            <td class="text-center" id='`+id+`0'>` + (value.tThoigianBatdauSang).substring(0, 5)+ ` - ` + (value.tThoigianKethucSang).substring(0, 5) + `</td>
                            <td class="text-center" id='`+id+`1'>` + (value.tThoigianBatdauChieu).substring(0, 5)+ ` - ` + (value.tThoigianKethucChieu).substring(0, 5) + `</td>
                            <td class="text-center" id='`+id+`2'>` + (value.tThoigianBatdauToi).substring(0, 5)+  ` - ` + (value.tThoigianKethucToi).substring(0, 5) + `</td>
                        </tr>`;
                        $("#StartTime").val(value.tThoigianBatdauSang);
                        $("#EndTime").val(value.tThoigianBatdauSang);
                });
            } else {
                html += '<tr><td colspan="100%" class="text-center">Bộ phận chưa được sắp xếp thời gian</td></tr>';
            }
            html = html.replaceAll('00:00 - 00:00', 'OFF');
            html = html.trim();
            $('.time-working tbody').html(html);
            $('.loader-bg').fadeOut(100);
        });
    });
    // $('#btn-save').on('click', function(){
    //     var tthoigianbatdau = $('#tthoigianbatdau').val() == '' ? '00:00' : $('#tthoigianbatdau').val();
    //     var tthoigiankethuc = $('#tthoigiankethuc').val() == '' ? '00:00' : $('#tthoigiankethuc').val();
    //     var data = {
    //         action: 'add_new',
    //         fk_ibophanid: $('#fk_ibophanid').val(),
    //         sngaytrongtuan: $('#sngaytrongtuan').val(),
    //         tthoigianbatdau: tthoigianbatdau,
    //         tthoigiankethuc: tthoigiankethuc,
    //         ca: $('#ca').val()
    //     };
    //     $.ajax({
    //         method: "POST",
    //         data: data,
    //         dataType:'json',
    //         url: "/thoi-gian-lam-viec",
    //     }).done(function (res) {
    //         td = $('#id-' + data.sngaytrongtuan + data.ca);
    //         if (res == 1) {
    //             if (data.tthoigianbatdau == "00:00" && data.tthoigiankethuc == "00:00") {
    //                 $(td).text("OFF");
    //             } else {
    //                 $(td).text(data.tthoigianbatdau + ' : ' + data.tthoigiankethuc);
    //             }
    //             $('#time-working-modal').modal('hide');
    //             Toast.fire({
    //                 icon: 'success',
    //                 title: 'Cập nhật thời gian làm việc thành công!'
    //             })
    //         }
    //     });
    // });
    $(document).on('change', '#tthoigianbatdau', function() {
        if ($('#tthoigiankethuc').val() == '') {
            $('#tthoigiankethuc').val($(this).val());
            $('#tthoigiankethuc').parent().find('.flatpickr-input').val($(this).val());
        }
    })
    
    $('[name="add-day-off"]').submit(function(e){
        if ($('#tthoigianbatdau').val() != "" && $('#tthoigiankethuc').val() != "") {
            // thời gian bắt đầu <= thời gian kết thúc
            var d1 = Date.parse($('#tthoigianbatdau').val());
            var d2 = Date.parse($('#tthoigiankethuc').val());
            if (d1 > d2) {
                text = "Thời gian bắt đầu không được nhỏ hơn thời gian kết thúc";
                $('#tthoigianbatdau').parent().find('.flatpickr-input').val('');
                $('#tthoigiankethuc').parent().find('.flatpickr-input').val('');
                $('#tthoigianbatdau').parent().find('.invalid-feedback').text(text);
                $('#tthoigiankethuc').parent().find('.invalid-feedback').text(text);
                e.preventDefault();
            }
        } else {
            text = 'Bạn cần nhập dữ liệu cho trường này!';
            $('#tthoigiankethuc').parent().find('.invalid-feedback').text(text);
            $('#tthoigiankethuc').parent().find('.invalid-feedback').text(text);
        }
    })
});