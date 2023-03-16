// ⚡⚡ NUMBERS ⚡⚡

let num1 = 10;
let num2 = 3521354;

const pi = 3.1416;

// como se consigue el area de un circulo

let radio = 11.5;
let areaCirculo = pi * (radio ** 2);
console.log(areaCirculo);

// Residuo = %
let num3 = 21;

console.log(num3 % 2);

if(num3 % 2 == 0){
    console.log('el numero es par');
} else {
    console.log('el numero es impar');
}
// ⚡⚡ OPERADORES MATEMATICOS SUMA Y RESTA
let num4 = '10';
let num5 = 5.5;

let sum1 = parseInt(num4) + num5;
let sum2 = Number(num4) + num5;
let sum3 = +num4 + num5;

let res1 = num4 - num5;
console.log(sum1, sum2, sum3);
console.log(res1);
console.log('****************************');
// ⚡⚡ INCREMENTOS Y DISMINUCIONES
let num6 = 6;
console.log(num6);
// let num7 = num6 + 6;
num6 += 6; // num6 = num6 + 6
console.log(num6);
num6 -= 2; // num6 = num6 - 2
console.log(num6);

// Incrementar y disminuir en 1
num6++;
console.log(num6); // 11
num6--; // 10
console.log(num6);

num6 =-6;
console.log(num6);
console.log('***********************');

// ⚡⚡ METODOS;
let num7 = 100 / 3; // 33.33333336

let num8 = num7.toFixed(2);
console.log(num8);

let num9 = +num8 + num5;
console.log(num9);
console.log('*******************');
// ⚡⚡ OBJETO MATH
let num10 = 10.4;
let res2 = Math.floor(num10);
console.log(res2); // 10
let res3 = Math.ceil(num10); 
console.log(res3); // 11
let res4 = Math.round(num10);
console.log(res4); // 11

// Numeros aleatorios;
let ale = Math.random() * 10;
console.log(ale); // 0 -> 0.00000001 --> 0.9999999
console.log(Math.ceil(ale));
