// Toggles More Info / Hide Info on Experiment
$(document).ready(function() {

  $(document).on('click','#reveal-info', function(event){
    $('.reveal-down').slideToggle(150);
    $(this).text(function(i, text){
      return text === "More Information" ? "Hide Information" : "More Information";
    })
  })

  $(document).on('click','.join-experiment-btn', function(event){
    event.preventDefault();
    var experiment_id = $('.experiment').attr('id')
    $.ajax({
      url: '/experiments/' + experiment_id,
      type: 'PATCH'
    }).done(function(response) {
      var content =  JSON.parse(response);
      $("#landing-ajax").html(content);
    });
  });

  $(".tabs li").on('click', function(event) {
    event.preventDefault();
    $(this).addClass("active");
    $(this).siblings().removeClass("active");
  });

  $(".tabs li a").on('click', function(event) {
    var tab = $(this).attr("href");
    $(".tab-content").css("display", "inherit");
    $(".tab-content").not(tab).css("display", "none");
  });
});
