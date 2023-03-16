// ⚡⚡ TEMPLATE STRIGNS ⚡⚡

const nombre = 'Jaimito';
const apellido = 'Rosales';

const fullName = nombre + ' ' + apellido;
console.log(fullName);

let edad = 999;

// 
let jaimitoData = 'Hola, soy ' + fullName + ' y tengo ' + edad + ' años de edad';
console.log(jaimitoData);

let fullData = `Hola, soy ${fullName} y tengo ${edad} años de edad`;

console.log(fullData);

// ⚡⚡ DOM
/*
    DOM -> DOCUMENT OBJECT MODEL
*/
// const h1 = document.getElementsByTagName('h1');
// const h1 = document.getElementsByClassName('fullname');
// const h1 = document.getElementById('h1');
const h1 = document.querySelector('.fullname');
console.log(h1);

// h1.innerHTML = fullData;
h1.textContent = fullData;

const vista = `
    <h2>Bienvenido ${nombre}</h2>
    <h3>Este es el curso de JavaScript</h3>
`;
// console.log(bloque);
const htmlBloque = document.querySelector('.bloque');
htmlBloque.innerHTML = vista;
// htmlBloque.textContent = bloque;