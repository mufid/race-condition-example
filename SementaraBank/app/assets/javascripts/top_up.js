$(document).on('click', '.top-up-commands a', function() {
  var repeatNum = $(this).attr('data-repeat');
  var href = $(this).attr('href');
  var amount = $('input[name=amount]').val().replace(/[^\d]/g, '');

  for (var i = 0; i < repeatNum; i++) {
    $.post(href, {amount: amount}, function() {
      console.log('execution done')
    });
  }

  $(".red").removeClass("hidden");
  $(".top-up-commands").addClass("hidden");

  setTimeout(function() {
    Turbolinks.visit('/top_up');
  }, 5000);

  return false;
});

// document.addEventListener("turbolinks:load", function() {
// });
