$(document).ready(function(){
    $(document).on('click', '.time-working tr td:not(:first-child)', function(){
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
            if (res.length != 0) {
                $.each(res, function( key, value ) {
                    html += `
                        <tr>
                            <td class="text-center">` + value['sTenThu'] + `</td>
                            <td class="text-center">
                                ` + (value['tThoigianBatdauSang']['hours']).toString().padStart(2, '0') + `:` + (value['tThoigianBatdauSang']['minutes']).toString().padStart(2, '0') + ` - ` + (value['tThoigianKethucSang']['hours']).toString().padStart(2, '0') + `:` + (value['tThoigianKethucSang']['minutes']).toString().padStart(2, '0') + ` 
                            </td>
                            <td class="text-center">
                                ` + (value['tThoigianBatdauChieu']['hours']).toString().padStart(2, '0') + `:` + (value['tThoigianBatdauChieu']['minutes']).toString().padStart(2, '0') + ` - ` + (value['tThoigianKethucChieu']['hours']).toString().padStart(2, '0') + `:` + (value['tThoigianKethucChieu']['minutes']).toString().padStart(2, '0') + ` 
                            </td>
                            <td class="text-center">
                                ` + (value['tThoigianBatdauToi']['hours']).toString().padStart(2, '0') + `:` + (value['tThoigianBatdauToi']['minutes']).toString().padStart(2, '0') + ` - ` + (value['tThoigianKethucToi']['hours']).toString().padStart(2, '0') + `:` + (value['tThoigianKethucToi']['minutes']).toString().padStart(2, '0') + ` 
                            </td>
                        </tr>`;
                });
            } else {
                html += '<tr><td colspan="100%" class="text-center">Bộ phận chưa được sắp xếp thời gian</td></tr>';
            }
            html = html.replaceAll('00:00 - 00:00', 'OFF');
            $('.time-working tbody').html(html);
            $('.loader-bg').fadeOut(500);
        });
    });
    $('#btn-save').on('click', function(){
        var data = {
            action: 'add_new',
            fk_ibophanid: $('#fk_ibophan').val(),
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
            alert('123');
        });
    });
});