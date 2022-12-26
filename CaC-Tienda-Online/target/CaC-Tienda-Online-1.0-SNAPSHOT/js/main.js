/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


let Parlantes= document.getElementById("parlantes");
let Auriculares= document.getElementById("auriculares");
let Monitors= document.getElementById("monitor");
let Mandos= document.getElementById("mando");
let Teclado= document.getElementById("teclado");
let Tablet= document.getElementById("tablet");

let stockProductos = []
    {id: 1, nombre: "Parlantes", cantidad: 1,  precio: 25.000}
    {id: 2, nombre: "Auriculares", cantidad: 1,  precio: 10.000}
    { id: 3, nombre: "Monitor",  cantidad: 1, precio: 30.000}
    {id: 4, nombre: "Mando",  cantidad: 1,  precio: 13.000}
    {id: 5, nombre: "Teclado",  cantidad: 1,  precio: 15.000}
    {id: 6, nombre: "Tablet", cantidad: 1, precio: 50.000}
]

const contenedorProductos = document.getElementById('contenedor-productos');



const contenedorCarrito = document.getElementById('carrito-contenedor')

const botonVaciar = document.getElementById('vaciar-carrito')

const contadorCarrito = document.getElementById('contadorCarrito')


const cantidad = document.getElementById('cantidad')
const precioTotal = document.getElementById('precioTotal')
const cantidadTotal = document.getElementById('cantidadTotal')

let carrito = []

document.addEventListener('DOMContentLoaded', () => {
    if (localStorage.getItem('carrito')){
        carrito = JSON.parse(localStorage.getItem('carrito'))
        actualizarCarrito()
    }
})

botonVaciar.addEventListener('click', () => {
    carrito.length = 0
    actualizarCarrito()
})


stockProductos.forEach((producto) => {
    const div = document.createElement('div');
    div.classList.add('producto');
    div.innerHTML = `
   <h3>${producto.nombre}</h3>
    <p class="precio-producto">Precio:$ ${producto.precio}</p>
    <button id="agregar${producto.id}" class="boton-agregar">Agregar <i class="fas fa-shopping-cart"></i></button>
    `;
    contenedorProductos.appendChild(div);

    
    const boton = document.getElementById(`agregar${parlantes.id}`);
    const boton = document.getElementById(`agregar${auriculares.id}`);
    const boton = document.getElementById(`agregar${monitor.id}`);
    const boton = document.getElementById(`agregar${mando.id}`);
    const boton = document.getElementById(`agregar${teclado.id}`);
     const boton = document.getElementById(`agregar${tablet.id}`);
    
    boton.addEventListener('click', () => {
        
        agregarAlCarrito(producto.id)
       
    })
})


const agregarAlCarrito = (prodId) => {

    
    const existe = carrito.some (prod => prod.id === prodId) 

    if (existe){ 
        const prod = carrito.map (prod => { 
            if (prod.id === prodId){
                prod.cantidad++
            }
        })
    } else { 
        const item = stockProductos.find((prod) => prod.id === prodId)
        carrito.push(item)
    }

    actualizarCarrito() 
    
}

const eliminarDelCarrito = (prodId) => {
    const item = carrito.find((prod) => prod.id === prodId)

    const indice = carrito.indexOf(item) 

    carrito.splice(indice, 1) 
 
    actualizarCarrito() 
   
    console.log(carrito)
}

const actualizarCarrito = () => {
   
    contenedorCarrito.innerHTML = "" 
    
    
    carrito.forEach((prod) => {
        const div = document.createElement('div')
        div.className = ('productoEnCarrito')
        div.innerHTML = `
        <p>${prod.nombre}</p>
        <p>Precio:$${prod.precio}</p>
        <p>Cantidad: <span id="cantidad">${prod.cantidad}</span></p>
        <button onclick="eliminarDelCarrito(${prod.id})" class="boton-eliminar"><i class="fas fa-trash-alt"></i></button>
        `

        contenedorCarrito.appendChild(div)
        
        localStorage.setItem('carrito', JSON.stringify(carrito))

    })
    
    contadorCarrito.innerText = carrito.length 
 
    console.log(carrito)
    precioTotal.innerText = carrito.reduce((acc, prod) => acc + prod.cantidad * prod.precio, 0)
    

}




