$(document).ready(function() {

//Opening Visit Section

$('#visitbutton').click(function() {
    $('#frontpage').fadeOut(100, function() {
      $(this).css({
        display:'none',
    });
    });
  $('.knolesection').fadeOut(100, function() {
   $(this).css({
    display:'none',
    });
    });
 $('#visitpara').fadeIn(600, function() {
   $(this).css({
        display:'block',
    });
    });

    });


//Opening Visit Section (Alternate)

$('.visitlink').click(function() {
    $('#frontpage').fadeOut(100, function() {
      $(this).css({
        display:'none',
    });
    });
  $('.knolesection').fadeOut(100, function() {
   $(this).css({
    display:'none',
    });
    });
 $('#visitpara').fadeIn(600, function() {
   $(this).css({
        display:'block',
    });
    });

    });



//Opening Art Section

$('#artbutton').click(function() {
  $('#frontpage').fadeIn(600, function() {
    $(this).css({
      display:'block',
  });
  });
  $('.knolesection').fadeOut(100, function() {
   $(this).css({
    display:'none',
    });
    });
 $('#artpara').fadeIn(600, function() {
   $(this).css({
        display:'block',
    });
    });

    });

//Opening Art Link

$('#artlink').click(function() {
  $('#frontpage').fadeIn(600, function() {
    $(this).css({
      display:'block',
  });
  });
  $('.knolesection').fadeOut(100, function() {
   $(this).css({
    display:'none',
    });
    });
 $('#artpara').fadeIn(600, function() {
   $(this).css({
        display:'block',
    });
    });

    });


//Opening Theory Section

$('#theorybutton').click(function() {
    $('#frontpage').fadeOut(100, function() {
      $(this).css({
        display:'none',
    });
    });
  $('.knolesection').fadeOut(100, function() {
   $(this).css({
    display:'none',
    });
    });
 $('#theorypara').fadeIn(600, function() {
   $(this).css({
        display:'block',
    });
    });

    });

//Opening Elsewhere Section

$('#elsewherebutton').click(function() {
    $('#frontpage').fadeOut(100, function() {
      $(this).css({
        display:'none',
    });
    });
  $('.knolesection').fadeOut(100, function() {
   $(this).css({
    display:'none',
    });
    });
 $('#elsewherepara').fadeIn(600, function() {
   $(this).css({
        display:'block',
    });
    });

    });


//Opening Home Section

    $('#homebutton').click(function() {
        $('#frontpage').fadeIn(600, function() {
          $(this).css({
            display:'block',
        });
        });
      $('.knolesection').fadeOut(100, function() {
       $(this).css({
        display:'none',
        });
        });

     $('#frontpageintropara').fadeIn(600, function() {
       $(this).css({
            display:'block',
        });
        });

        });

});
