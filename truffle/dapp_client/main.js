$(document).ready(function() {
    $('#form').submit(function(e) {
        e.preventDefault();
        let data = {};
        $.each($('#form').serializeArray(), function(i, field) {
            data[field.name] = field.value;
        });
        $('#submitButton').attr('disabled', true);

        translate(data['key'], data['translation'], (a,b) => {
            if(!a) {
                new Noty({
                  type: 'success',
                  text: b,
                  timeout: false
              }).show();
            }
        });
    });
});