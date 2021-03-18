$(document).ready(function(){
    $(document).on('click', '.SalaryProcess', function(){
        var ID = $(this).attr('data-NVID');
        $('#id').val(ID);
        var data = {
            action: 'get_salary_process',
            id: ID,
        };
        $.ajax({
            method: "POST",
            data: data,
            dataType:'json',
            url: "/luong-co-ban",
        }).done(function (res) {
            html = '';
            if (res.length != 0) {
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