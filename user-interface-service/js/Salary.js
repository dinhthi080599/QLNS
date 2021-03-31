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
                    // x = .toLocaleString('it-IT', {style : 'currency', currency : 'VND'});
                    // lbh = value.iLuongDongBaohiem.toLocaleString('it-IT', {style : 'currency', currency : 'VND'});
                    x = new Intl.NumberFormat('de-DE', { style : 'currency', currency : 'VND' }).format(value.iLuongCoban)
                    lbh = new Intl.NumberFormat('de-DE', { style : 'currency', currency : 'VND' }).format(value.iLuongDongBaohiem)
                    html += `
                        <tr>
                            <td class="text-center">` + value.dNgayHetHan + `</td>
                            <td>` + x + `</td>
                            <td>` + lbh + `</td>
                        </tr>`;
                });
            }
            $('#SalaryDetail').html(html);
        });
    });
    
    $(document).on('submit', '#update-salary', function(){
        var salary = $('#salary').val();
        var baohiem = $('#luong-bao-hiem').val();
        if (isNaN(salary) || isNaN(baohiem)) 
        {
            Toast.fire({
                icon: 'error',
                title: 'Tiền lương hoặc tiền bảo hiểm không hợp lệ!'
            })
            return false;
        }
        if (salary < 8000000) {
            Toast.fire({
                icon: 'error',
                title: 'Tiền lương tối thiểu là 8.000.000 VND'
            })
            return false;
        }
        if (baohiem < 3000000) {
            Toast.fire({
                icon: 'error',
                title: 'Bảo hiểm tối thiểu là 3.000.000 VND'
            })
            return false;
        }
    });
});