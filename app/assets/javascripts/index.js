$(document).ready(function(){
  $.ajax({
    url: "/",
    dataType: "script"
  }).done(function(response){
    console.log(response);
    var content =  JSON.parse(response);
    console.log(content)
    $("#landing-ajax").html(content);
  })
})
