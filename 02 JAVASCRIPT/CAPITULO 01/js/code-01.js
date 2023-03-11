// JAVASCRIPT ES KEYSENSITIVE

/* 🔥🔥 TIPOS DE DATOS 🔥🔥 */
/*
    STRING
    NUMBERS
    BOOLEANS
    OBJETOS
    ETC
*/

/* ⚡⚡ STRING ⚡⚡ */
/* CEDENAS DE TEXTO */

/* var, ES5 -> let y const */
// var nombre = "Eduardo";
let nombre = 'Sofia';
let apellido = 'Casas';

const pi = '3.1416';

// Lenguajes tipo C
// str nombre = "Eduardo"
// double num = 10.45;

// console.log(nombre);

// nombre = 'Carlos';
// console.log(nombre);

// pi = '3.141619';

// ⚡⚡ CONCATENAR

let nombreFull = 'Eduardo' + ' ' + 'Arroyo';
console.log(nombreFull);

let nombreCompleto = nombre + ' ' + apellido;
console.log(nombreCompleto);

let prueba = nombre + 12.3;

console.log(prueba);

// Javascript un string lo toma como un tipo de objeto
// los objetos tienen propiedades y metodos
// objeto.propiedad
// objeto.metodo()

// let num, abc, ret, coma;
// console.log(num)

console.log(nombre.length);
console.log(nombreCompleto.length);

console.log('holacomoestan'.length);

// INDICES
// P A L A B R A  = 7 
// 0 1 2 3 4 5 6

console.log(nombre[0]);
console.log(nombre[4]);

let data1 = 'sajkgdsakjgdjysagdjhsgsajhgdsa';
console.log(data1[data1.length - 1]);

// nombre = Carlos, Apellido = Rojas
// crojas@tucorreo.com
let nom = 'Carlos';
let ape = 'Rojas';
let dominio = 'tucorreo.com';

let correo = nom[0] + ape + '@' + dominio;
console.log(correo.toLowerCase());   
console.log(correo.toUpperCase());   

