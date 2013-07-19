$(document).ready(function () {
  $(function () {
    setTimeout(function () {
      $('.alert.alert-success.alert-block').slideUp('slow', function () {});
    }, 3000);
  });
  $(function () {
    $('.footable').footable();
    $("input:checkbox, input:radio").uniform();
  });
  if ($.cookie('maxWidthFoster') == 1) {
    $(".container-fluid, .headerinside").addClass("maxwidth");
  };
  var settings = $.cookie('maxWidthFoster');
  if (settings != 1) {
    $('#setWidth').button('toggle');
  }
  $("#setWidth").live('click', function () {
    if (settings == 1) {
      $(".container-fluid, .headerinside").removeClass("maxwidth");
      $.removeCookie('maxWidthFoster');
      settings = 0;
    } else {
      $(".container-fluid, .headerinside").addClass("maxwidth");
      $.cookie('maxWidthFoster', 1);
      settings = 1;
    };
  });
});