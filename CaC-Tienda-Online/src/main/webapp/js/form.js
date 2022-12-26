/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


let botonBorrarTodo = document.getElementById('botonBorrarTodo');
botonBorrarTodo.onclick = borrarTodo;

function borrarTodo(){
  document.getElementById("formlogin").reset();
}