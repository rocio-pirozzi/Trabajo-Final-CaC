<%-- 
    Document   : login
    Created on : 22/12/2022, 10:45:34
    Author     : Rocio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/views/partials/nav.jsp" %>

<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="/js/form.js"> </script>
    <title>Registro</title>

}
    <style>
        body {font-family: Arial, Helvetica, sans-serif;
        padding: 10px;}
        form {border: 3px solid #f1f1f1;}
        
        input[type=text], input[type=password] {
          width: 100%;
          padding: 12px 20px;
          margin: 8px 0;
          display: inline-block;
          border: 1px solid #ccc;
          box-sizing: border-box;
        }
        
        button {
          background-color: #04AA6D;
          color: white;
          padding: 14px 20px;
          margin: 8px 0;
          border: none;
          cursor: pointer;
          width: 100%;
        }
        
        button:hover {
          opacity: 0.8;
        }
        
        .cancelbtn {
          width: auto;
          padding: 10px 18px;
          background-color: #f44336;
        }
        
        .imgcontainer {
          text-align: center;
          margin: 24px 0 12px 0;
        }
        
        img.avatar {
          width: 40%;
          border-radius: 50%;
        }
        
        .container {
          padding: 16px;
        }
        
        span.psw {
          float: right;
          padding-top: 16px;
        }
        
        
        @media screen and (max-width: 300px) {
          span.psw {
             display: block;
             float: none;
          }
          .cancelbtn {
             width: 100%;
          }
        
        </style>
</head>

<body>
    
<h2>Por favor, ingrese el usuario y la contraseña para iniciar sesión.</h2>

<form action="/Iniciar" method="post" id="formlogin">
  
  <div class="container">
    <label for="uname"><b>Usuario</b></label>
    <input type="text" placeholder="Ingrese el nombre de usuario"  id="textusuario"name="usuario" required >

    <label for="psw"><b>Contraseña</b></label>
    <input type="password" id="txtcontraseña" placeholder="Ingrese la Contraseña" name="contraseña" required>
        
    <button type="submit" value=" Iniciar Sesion" id="btniniciar">Iniciar sesión</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Recordarme 
    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn" id="botonBorrarTodo">Borrar</button>
    <span class="psw">Recupere <a href="#">la contraseña</a></span>
  </div>
</form>
</body>

</html>
<%@include file="/views/partials/footer.jsp" %>