$(function() {
  var w = $(window).width();
  var h = $(window).height();
  $("#show_width").text('width: ' + w);
  $("#show_height").text('height: ' + h);

  $("#start_button").css({
    display: "table-cell",
    "vertical-align": "middle"
  });
});