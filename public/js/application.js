$(document).ready(function() {
  $('#upload').click(function(){
    filepicker.pick({
        mimetypes: ['image/*', 'text/plain'],
        container: 'window',
        services:['COMPUTER', 'INSTAGRAM', 'WEBCAM'],
      },
      function(FPFile){
        $.post('/upload', FPFile)
      },
      function(FPError){
        alert("Choose a picture please");
      }
    );
  });

  $('#dlog').click(function(e){
    e.preventDefault();
    $.get('/login', function(result){
      if ($('.login').is(':visible') == true) {
        $('.login').slideUp(400);
      } else {
        $('.login').html(result).slideDown(400);
      };
    });
    return false;
  });

});


