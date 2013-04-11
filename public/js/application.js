$(document).ready(function() {
  $('#upload').click(function(){
    filepicker.pick({
        mimetypes: ['image/*', 'text/plain'],
        container: 'window',
        services:['COMPUTER', 'WEBCAM'],
      },
      function(FPFile){
        $.post('/upload', FPFile)
      },
      function(FPError){
        alert(FPError.toString());
      }
    );
  });
});
