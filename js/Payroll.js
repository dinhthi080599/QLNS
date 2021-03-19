$(document).ready(function(){

    $(document).on('click', '#check-all', function(){
        $('input:checkbox').not(this).prop('checked', this.checked);
    })


})