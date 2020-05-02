function meGusta(id) {
  var Ruta = Routing.generate("likes");
  $.ajax({
    type: "POST",
    url: Ruta,
    data: { id: id },
    async: true,
    dataType: "json",
    success: function (data) {
      // console.log(data["likes"]);
      window.location.reload();
    },
  });
}
