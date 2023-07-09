program project1;
{$mode objfpc}{$H+}
 uses
   WebUI;

var
  window: size_t;
  content: PChar;
  counter: Integer;



procedure EventHandler(e: Pwebui_event_t);
begin
     //ShowMessage('welcom');
    //writeln('Received callback: ', e^.data);
    //inc(counter);
    //webui_interface_set_response(e^.window, e^.event_number, PChar('{"label1": "Message from Free Pascal", "label2": "' + IntToStr(counter) + '"}'));
end;

begin
  window := webui_new_window;
  content:='<html>'+
  '<body> '+
  '<style>'+
  '#main {'+
                'width: 500; /*Set to whatever*/'+
                'height: 500;/*Set to whatever*/'+
            '}'+
            '</style>'+

  '<h1 style="color: green;">'+
  	'Local Video Player (the html code inside the code)'+
  '</h1>'+
  '<h3>'+
  	'<br/><br/>'+
'<button onclick="play();">Play</button>'+
'<button onclick="pause();">Pause</button>'+

  '</h3>'+

  '<!-- Specify the source of'+
  'the video file -->'+
  '<video id= "myvideo" src="https://media.geeksforgeeks.org/wp-content/uploads/20210314115545/sample-video.mp4"'+
 	'width="720" height="480" controls>'+  //
  	'The browser does not support videos.'+  //
  '</video>'+
  '<script>'+
  'let video = document.getElementById("myvideo");'+
  'let play = () => video.play();'+
  'let pause = () => video.pause();'+
 '</script>'+


  '</body>'+
  '</html>';

  webui_show(window,content);
  webui_bind(window, 'Button1click', @EventHandler);
  webui_wait;

end.


