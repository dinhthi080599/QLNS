$(document).ready(function(){
    $(document).on('click', '.time-working tr td:not(:first-child)', function(){
        var id =$(this).get(0).id;
        var text = $(this).text();
        var thu = id.substr(3, 1); 
        var ca = id.substr(4, 1); 
        $('#sngaytrongtuan').val(thu);
        $('#ca').val(ca);
        if (text != 'OFF') {
            time_start = text.substr(0, 5);
            time_end = text.substr(8, 9);
            $('#tthoigianbatdau').val(time_start);
            $('#tthoigiankethuc').val(time_end);
        }
        $('#time-working-modal').modal('show');
    });
    $('#working').on('change', function(){
        console.log($(this).attr('data-off'));
        if ($(this).prop('checked')) {
            $('#label-working').text($(this).attr('data-on'));
        } else {
            $('#label-working').text($(this).attr('data-off'));
        }
    });
    $(document).on('click', '.media', function(){
        $('.loader-bg').fadeIn();
        var PartID = $(this).attr('data-part-id');
        $('#fk_ibophanid').val(PartID);
        var data = {
            action: 'get_data',
            PartID: PartID,
        };
        $.ajax({
            method: "POST",
            data: data,
            dataType:'json',
            url: "/",
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
    $('#btn-save').on('click', function(){
        var data = {
            action: 'add_new',
            fk_ibophanid: $('#fk_ibophanid').val(),
            sngaytrongtuan: $('#sngaytrongtuan').val(),
            tthoigianbatdau: $('#tthoigianbatdau').val(),
            tthoigiankethuc: $('#tthoigiankethuc').val(),
            ca: $('#ca').val()
        };
        $.ajax({
            method: "POST",
            data: data,
            dataType:'json',
            url: "/",
        }).done(function (res) {
            td = $('#id-' + data.sngaytrongtuan + data.ca);
            if (res == 1) {
                if (data.tthoigianbatdau == "00:00" && data.tthoigiankethuc == "00:00") {
                    $(td).text("OFF");
                } else {
                    $(td).text(data.tthoigianbatdau + ' : ' + data.tthoigiankethuc);
                }
            }
        });
    });
});