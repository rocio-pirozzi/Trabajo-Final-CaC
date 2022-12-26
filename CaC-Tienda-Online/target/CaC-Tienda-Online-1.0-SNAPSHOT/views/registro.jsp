<%-- 
    Document   : registro
    Created on : 22/12/2022, 10:47:30
    Author     : Rocio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/views/partials/nav.jsp" %>

<!DOCTYPE html>
<html>
   
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="/js/form.js"> </script>
    <title>Registro</title>

    <style>
        body {font-family: Arial, Helvetica, sans-serif;}
        * {box-sizing: border-box;
        padding:10px;
        }
        
        input[type=text], input[type=password] {
          width: 100%;
          padding: 15px;
          margin: 5px 0 22px 0;
          display: inline-block;
          border: none;
          background: #f1f1f1;
        }
        
        input[type=text]:focus, input[type=password]:focus {
          background-color: #ddd;
          outline: none;
        }
        
        hr {
          border: 1px solid #f1f1f1;
          margin-bottom: 25px;
        }
        
       
        button {
          background-color: #04AA6D;
          color: white;
          padding: 14px 20px;
          margin: 8px 0;
          border: none;
          cursor: pointer;
          width: 100%;
          opacity: 0.9;
        }
        
        button:hover {
          opacity:1;
        }
        
        
        .cancelbtn {
          padding: 14px 20px;
          background-color: #f44336;
        }
        
        
        .cancelbtn, .signupbtn {
          float: left;
          width: 50%;
        }
        
       
        .container {
          padding: 16px;
        }
        
        
        .clearfix::after {
          content: "";
          clear: both;
          display: table;
        }
        
        
        @media screen and (max-width: 300px) {
          .cancelbtn, .signupbtn {
             width: 100%;
          }
        
        </style>
</head>
<body>
    <form action="/Registrar" style="border:1px solid #ccc">
        <div class="container">
          <h1>Registrarse</h1>
          <p>Por favor, complete el siguiente formulario para crear una cuenta.</p>
          <hr>

          <label for="nombre"><b>Nombre Completo</b></label>
          <input type="text" placeholder="Ingrese aquí su nombre completo" name="nombre" required>

          <label for="usuario"><b> Crear usuario</b></label>
          <input type="text" placeholder="Ingrese aquí el usuario" name="usuario" required>
          
          <label for="email"><b>Correo electronico</b></label>
          <input type="text" placeholder="Ingrese aquí su correo electronico" name="email" required>
      
          <label for="psw"><b>Contraseña</b></label>
          <input type="password" placeholder="Ingrese aquí la contraseña" name="contraseña" required>
      
          <label for="psw-repeat"><b>Repetir contraseña </b></label>
          <input type="password" placeholder="Repita la contraseña" name="contraseña" required>
          
          <label>
            <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px">Recordarme
          </label>
          
          <p>Creando la cuenta usted va a aceptar nuestros  <a href="#" style="color:dodgerblue">Terminos y condiciones</a>.</p>
      
          <div class="clearfix"> 
              <button type="button" class="botonBorrarTodo" id="botonBorrarTodo">Borrar</button>
            <button type="submit" class="botonEnviar" value="Registrarse">Registrarse</button>
          </div>
        </div>
      </form>
</body>

</html>
<%@include file="/views/partials/footer.jsp" %>