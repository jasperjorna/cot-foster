$(document).ready(function() {
    $(function() {
      setTimeout(function() {
        $('.alert.alert-success.alert-block').slideUp('slow', function() {
        });
      }, 3000);
    });
    $(function() {
        $('.footable').footable();
        $("input:checkbox, input:radio").uniform();
    });
});