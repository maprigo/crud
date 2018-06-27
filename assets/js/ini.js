$(document).ready(function(){
    Plugins();
})

function Plugins(){
    $(".datepicker").datepicker({
        changeMonth: true,
        changeYear: true,
        showButtonPanel: true,
        dateFormat: 'yy-mm-dd',
        yearRange: '1950:2005',
    });
}