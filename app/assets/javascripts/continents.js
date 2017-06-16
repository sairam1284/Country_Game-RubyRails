
$(document).ready(function() {
  $('#nation').on('keydown', function (e){

     if(e.which === 13){
         var example = $("#nation").val().toLowerCase();
         example=example.replace(/ /g,"_");
         console.log("The value of x is", example);
         $("#"+example).removeClass('hidden');
         $('#nation').val("");
   }

   var num = $('.hidden').length;
   $('.natcount').text(num+"/");
 });
 $('#nationshow').click(function () {
    $("."+"hidden").removeClass('hidden');
  });
});
