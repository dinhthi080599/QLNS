$(document).ready(function(){
    $(document).on('click', '.SalaryProcess', function(){
        var NVID = $(this).attr('data-NVID');
        var ID = $(this).val();
        $('#id').val(ID);
        var data = {
            action: 'get_salary_process',
            id: ID,
            nvID: NVID,
        };
        $('#SalaryDetail').html('');
        $.ajax({
            method: "POST",
            data: data,
            dataType:'json',
            url: "/luong-co-ban",
        }).done(function (res) {
            html = '';
            if (res != 'die') {
                $.each(res, function( key, value ) {
                    x = value.iLuongCoban.toLocaleString('it-IT', {style : 'currency', currency : 'VND'});
                    html += `
                        <tr>
                            <td class="text-center">` + value.dNgayKy + `</td>
                            <td class="text-center">` + value.dNgayHetHan + `</td>
                            <td>` + x + `</td>
                        </tr>`;
                });
            }
            $('#SalaryDetail').html(html);
        });
    });
});