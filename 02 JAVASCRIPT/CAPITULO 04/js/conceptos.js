/* ⚡ EJECUCIONES SINCRONAS Y ASINCRONAS ⚡ */

// 1️⃣ SINCRONAS
let nombre = 'Sofia';
let apellido = 'Gutierres';

console.log(nombre);

const fullName = () => {
    return `${nombre} ${apellido}`;
}

console.log(fullName());

// 2️⃣ asincronas

// setInterval(function(){
//     console.log('esta es una ejecucion asincrona');
// }, 1000)

// 3️⃣ Peticiones y respuestas a servicios -> APIS o DB -> JSON
// JSON javascript object notation
// FETCH -> devolver una promesa

// fetch('data/personas.json').then(function(datos){
//     console.log(datos.json());
// });

fetch('https://pokeapi.co/api/v2/pokemon/ditto')
    .then(datos => {
        console.log(datos.json());
    })