<%-- 
    Document   : productos
    Created on : 24/12/2022, 12:21:35
    Author     : Rocio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/views/partials/nav.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productos</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <script src="/js/main.js" type="text/javascript"></script>


        
        
    </head>
    
    <style>
        .condenedor-productos {
    display: flex;
    align-items: center;
    justify-content: center;
        }        
        
 .card-product {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;

  
}

.price {
  color: grey;
  font-size: 22px;
}

.card button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
      display: flex;
    align-items: center;
    justify-content: center;
  
}

.card button:hover {
  opacity: 0.7;
}
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
    <body>
        
         <main id="contenedor-productos" >
       <div class="card-product" id="1">
            <img src="<%= request.getContextPath() %>/img/altavoz-musica-diseno-plano_23-2148167850.png" alt="imagen" style="width:100%">
            <h1>Parlantes</h1>
            <p class="precio-producto">$25.000</p>
            <p><button class="boton-agregar" id="parlantes">Añadir al Carrito</button></p>
       </div>
     
       <div class="card-product"id="2">
            <img src="<%= request.getContextPath() %>/img/auriculares.jpg" alt="imagen" style="width:100%">
            <h1>Auriculares</h1>
            <p class="precio-producto">$10.000</p>
           <p><button class="boton-agregar" id="auriculares ">Añadir al Carrito</button></p>
       </div>
  
       
       <div class="card-product" id="3">
            <img src="<%= request.getContextPath() %>/img/tv-pantalla-ancha_144627-12166 (1).png" alt="imagen" style="width:100%">
            <h1>Monitor</h1>
            <p class="precio-producto">$30.000</p>
            <p><button class="boton-agregar" id="monitor">Añadir al Carrito</button></p>
</div>
       
<div class="card-product">
  <img src="<%= request.getContextPath() %>/img/mando-png.avif" alt="imagen" style="width:100%">
  <h1>Mando</h1>
  <p class="precio-producto">$13.000</p>
  <p><button class="boton-agregar" id=" mando">Añadir al Carrito</button></p>
</div>
        
  <div class="card-product">
  <img src="<%= request.getContextPath() %>/img/raton-teclado-inalambricos_1260-15.png" alt="imagen" style="width:100%">
  <h1>Teclado</h1>
  <p class="precio-producto">$15.000</p>
  <p><button class="boton-agregar" id="teclado">Añadir al Carrito</button></p>
</div>
       
 <div class="card-product">
  <img src="<%= request.getContextPath() %>/img/tablet.png" alt="imagen" style="width:100%">
  <h1>Tablet</h1>
  <p class="precio-producto">$50.000</p>
  <p><button class="boton-agregar" id="tablet">Añadir al Carrito</button></p>
</div>      
 </main>      
      
    </body>
</html>
<%@include file="/views/partials/footer.jsp" %>