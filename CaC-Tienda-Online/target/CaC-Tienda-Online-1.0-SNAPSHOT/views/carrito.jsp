<%-- 
    Document   : carrito
    Created on : 22/12/2022, 10:48:57
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
    <title>Document</title>

    <style>
        body {
          font-family: Arial;
          font-size: 17px;
          padding: 8px;
        }
        
        * {
          box-sizing: border-box;
        }
        
        .row {
          display: -ms-flexbox; /* IE10 */
          display: flex;
          -ms-flex-wrap: wrap; /* IE10 */
          flex-wrap: wrap;
          margin: 0 -16px;
        }
        
        .col-25 {
          -ms-flex: 25%; /* IE10 */
          flex: 25%;
        }
        
        .col-50 {
          -ms-flex: 50%; /* IE10 */
          flex: 50%;
        }
        
        .col-75 {
          -ms-flex: 75%; /* IE10 */
          flex: 75%;
        }
        
        .col-25,
        .col-50,
        .col-75 {
          padding: 0 16px;
        }
        
        .container {
          background-color: #f2f2f2;
          padding: 5px 20px 15px 20px;
          border: 1px solid lightgrey;
          border-radius: 3px;
        }
        
        input[type=text] {
          width: 100%;
          margin-bottom: 20px;
          padding: 12px;
          border: 1px solid #ccc;
          border-radius: 3px;
        }
        
        label {
          margin-bottom: 10px;
          display: block;
        }
        
        .card-container {
          margin-bottom: 20px;
          padding: 7px 0;
          

        }
        
        .btn {
          background-color: #04AA6D;
          color: white;
          padding: 12px;
          margin: 10px 0;
          border: none;
          width: 100%;
          border-radius: 3px;
          cursor: pointer;
          font-size: 17px;
        }
        
        .btn:hover {
          background-color: #45a049;
        }
        
        a {
          color: #2196F3;
        }
        
        hr {
          border: 1px solid lightgrey;
        }
        
        span.price {
          float: right;
          color: grey;
        }
        
        /* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
        @media (max-width: 800px) {
          .row {
            flex-direction: column-reverse;
          }
          .col-25 {
            margin-bottom: 20px;
          }
        }
        </style>
</head>
<body>
        <div class="modal-contenedor">
        <div class="modal-carrito">
            <h3>Carrito</h3>
            <button id="carritoCerrar"><i class="fas fa-times-circle"></i></button>
            <div id="carrito-contenedor">
                <!-- <div class="productoEnCarrito">
                    <p>Buzo 1</p>
                    <p>Precio: $1200</p>
                    <button class="boton-eliminar"><i class="fas fa-trash-alt"></i></button>
                </div> -->
            </div>
            <p class="precioProducto">Precio total: $<span id="precioTotal">0</span></p>
            <button id="vaciar-carrito" class="boton-agregar">Vaciar carrito</button>
        </div>
    </div>
</body>
<%@include file="/views/partials/footer.jsp" %>
