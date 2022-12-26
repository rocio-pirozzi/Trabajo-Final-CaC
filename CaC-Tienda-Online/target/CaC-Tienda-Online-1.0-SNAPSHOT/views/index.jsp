<%-- 
    Document   : index
    Created on : 22/12/2022, 10:41:01
    Author     : Rocio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="es">
<head>
  <title>Tienda Online CaC</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  
  <style>
    
    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    
   
     .jumbotron {
      margin-bottom: 0;
    }
   
    
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
  </style>
</head>
<body>

<div class="jumbotron">
  <div class="container text-center">
    <h1>Tienda Online CaC.</h1>      
    <p>Nuestro compromiso se centra en ofrecerles los mejores prodductos a los mejores precios.</p>
  </div>
</div>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.jsp">Inicio</a></li>
        <li><a href="productos.jsp">Productos</a></li>
        <li><a href="index.jsp">Ofertas</a></li>
        <li><a href="#">Locales</a></li>
        <li><a href="#">Contacto</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Inicio sesión</a></li>
        <li><a href="registro.jsp"><span class="glyphicon glyphicon-user"></span> Registrarse</a></li>
        <li><a href="carrito.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> Carrito</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading"> OFERTA MES DE DICIEMBRE </div>
        <div class="panel-body"><img src="<%= request.getContextPath() %>/img/altavoz-musica-diseno-plano_23-2148167850.png" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Altavoces al 20%</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">OFERTA MES DE DICIEMBRE</div>
        <div class="panel-body"><img src="<%= request.getContextPath() %>/img/auriculares.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Auriculares al 35%</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">OFERTA MES DE DICIEMBRE</div>
        <div class="panel-body"><img src="<%= request.getContextPath() %>/img/tv-pantalla-ancha_144627-12166 (1).png" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Monitores al 20%</div>
      </div>
    </div>
  </div>
</div><br>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">OFERTA MES DE DICIEMBRE</div>
        <div class="panel-body"><img src="<%= request.getContextPath() %>/img/mando-png.avif" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Mandos al 50%</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">OFERTA MES DE DICIEMBRE</div>
        <div class="panel-body"><img src="<%= request.getContextPath() %>/img/raton-teclado-inalambricos_1260-15.png" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Mouse y teclados inalambricos al 60%</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">OFERTA MES DE DICIEMBRE</div>
        <div class="panel-body"><img src="<%= request.getContextPath() %>/img/tablet.png" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Tablets al 40%</div>
      </div>
    </div>
  </div>
</div><br><br>

<footer class="container-fluid text-center">
  <p>©Tienda Online CaC. Todos los derechos reservados</p>  
  <form class="form-inline">Enterese de nuestras oferetas
    <input type="email" class="form-control" size="50" placeholder="Correo Electronico">
    <button type="button" class="btn btn-danger">Registrese</button>
  </form>
</footer>

</body>
</html>
