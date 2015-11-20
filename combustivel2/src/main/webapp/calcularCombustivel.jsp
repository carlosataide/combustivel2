<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calcular Combustível</title>
    </head>
    
     <style type="text/css">
        
        body{
            background-color: #7CAF0A;
        }
        h1{
            font-family: verdana;
            text-align: center;
        }
        
        label{
            font-family: Arial;
        }
        
        form {
            width: 210px;
            margin: auto;
        }
        
        input, textarea {
            font-family: arial;
            font-weight: normal;
            font-size: 12pt;        
        }
        
        div#interface {
            width: 1000px;
            background-color: #7CAF0A;
            margin: 150px auto 0px auto;
            box-shadow: 0px 0px 10px rgba(0,0,0,0.5);
            padding: 10px;
        }
        
    </style>
    <body>
        <div id="interface">
        <h1>Resultado do IMC</h1>
        <form>
            <label>Valor do IMC:</label>
            <input type="text" size="10" value="<%= request.getAttribute("calcular_combustivel")%>"<br><br><br>
            <label>Status:</label>
            <input type="text" size="42" value="<%= request.getAttribute("mais_vantajoso")%>"<br><br><br>

            <input type="button" value="retornar" onclick="history.back()">
        </form> 
        </div>  
    </body>
</html>
