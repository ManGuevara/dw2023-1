/* ⚡⚡ FUNCTIONS ⚡⚡ */

function saludar(){
    console.log('hola mundo');
}

// saludar();

const fechaNacJuan = 1820;
const nombre = 'Juan';

// 🔥🔥 PARAMETROS Y ARGUMENTOS EN LAS FUNCIONES
function obtenerEdad(fechaNac, nom){
    let edad = 2023 - fechaNac;
    let res = `la edad de ${nom} es: ${edad}`;
    console.log(res);
}

obtenerEdad(fechaNacJuan, nombre);

const fechaNacSofia = 1990;
const nombre2 = 'sofia';

obtenerEdad(fechaNacSofia, nombre2);

// 💡💡 VARIABLES GLOBALES Y VARIABLES LOCALES O DE SCOPE

let num1 = 100;

function llamarNum(){
    // variables de scope, locales, de ambito o de bloque
    let num1 = 10;
    console.log(num1);
}
llamarNum();
console.log(num1);

const arrayNums = [12,897,39,96,789,1,6,15];
const personajes = ['joshi', 'mario', 'ryo', 'ken'];


function imprimirArray(array){
    for(let i = 0; i < array.length; i++){
        console.log(array[i])
    }
}

imprimirArray(arrayNums);
imprimirArray(personajes);
console.log('***************************');

function sumar(num1, num2){
    let res = num1 + num2;
    return res;    
}
// sumar(2, 4);
// console.log(sumar(2, 4));

// let resultado = sumar(2, 10);

let bloque = document.querySelector('.bloque');
// bloque.textContent = sumar(2, 2);

function elevarAUnNumero(elevacion, num){
    let res = num ** elevacion;
    return res;
}

let res2 = elevarAUnNumero(sumar(2,2), 2);
console.log(res2);

console.log('*********************');

const likes = document.querySelector('.likes');
const btn = document.querySelector('.btnVistas');

let vistas = 0;

function sumarVistas(){
    vistas++;
    // console.log(vistas);
    // alamacenar en la DB
    likes.textContent = vistas;
}

btn.addEventListener('click', sumarVistas);