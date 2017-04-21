// Toggles More Info / Hide Info on Experiment
$(document).ready(function() {
  $(document).on('click','#reveal-info', function(event){
    $('.reveal-down').slideToggle(150);
    $(this).text(function(i, text){
      return text === "More Information" ? "Hide Information" : "More Information";
    })
  })
});
