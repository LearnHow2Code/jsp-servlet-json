<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Exchcange Json Data</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function (){
            $("#button1").click(function (){
                $.ajax({
                    type:'GET',
                    url:'product?action=demo1',
                    headers:{
                        Accept:"application/json; charset=utf-8",
                        "Content-Type":"application/json; charset=utf-8"
                    },
                    success: function (result){
                        var product = $.parseJSON(result);
                        document.getElementById('result1').innerHTML = 'Id: ' + product.id + '<br>Name: ' + product.name + '<br>Price' + product.price;
                    }
                });
            });
            $("#button2").click(function (){
                $.ajax({
                    type:'GET',
                    url:'product?action=demo2',
                    headers:{
                        Accept:"application/json; charset=utf-8",
                        "Content-Type":"application/json; charset=utf-8"
                    },
                    success: function (result){
                        var listProducts = $.parseJSON(result);
                        var s = '';
                        for (var i = 0; i<listProducts.length; i++){
                            var product = listProducts[i];
                            s += 'Id: ' + product.id + '<br>Name: ' + product.name + '<br>Price' + product.price + '<br><br><br>';

                        }
                        document.getElementById('result2').innerHTML = s;
                    }
                });
            });
        });
    </script>


</head>
    <body>
    <h1><%= "Hello World!" %>
    </h1>
    <br/>
    <a href="hello-servlet">Hello Servlet</a>
    <br>
    <br>
    <fieldset>
        <legend>Demo 1</legend>
        <input type="button" value="Display Object" id="button1">
        <br>
        <div id="result1"></div>
    </fieldset>
    <fieldset>
        <legend>Demo 2</legend>
        <input type="button" value="Display list of Objects" id="button2">
        <br>
        <div id="result2"></div>
    </fieldset>

    </body>
</html>