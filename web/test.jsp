

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
<link href=
'https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/ui-lightness/jquery-ui.css'
          rel='stylesheet'>
      
    <script src=
"https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js" >
    </script>
      
    <script src=
"https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" >
    </script>
       <script>
        var array = ["2023-03-14","2023-03-15","2023-03-16", "2023-03-24", "2023-03-21","2023-03-25"];
var trima = []
for (i = 0; i < array.length; i++ ) {
    trima.push(array[i].substring(10,""))
}
$(function() {
$("#input").datepicker({
    beforeShowDay: function(date){
        var string = jQuery.datepicker.formatDate('yy-mm-dd', date);
        return [ trima.indexOf(string) == -1 ]
    }
});
});
      </script>
    </head>
    <body>
  <p>Enter Date: <input type = "text" id = "input"></p>
    </body>
</html>
