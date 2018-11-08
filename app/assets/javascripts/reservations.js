$(function() {
  $("#reservation_name_trip").change(function(){
    var price_trip = $("[price = 'reservation[price]']").val()
    $.ajax({
      url: '/trips/' + $("#reservation_name_trip").val(),
      type: 'GET',
      dataType: 'json'
    })
    .done(function(data) {
      $( "#precio" ).append(data.price);
      console.log(data.price);
    })
    .fail(function() {
      console.log("error");
    })
    .always(function() {
      console.log("complete");
    });
  });
});
