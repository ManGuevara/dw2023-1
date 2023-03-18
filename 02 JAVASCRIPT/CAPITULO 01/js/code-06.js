// ⚡⚡ FUNCTION DE EXPRESION

function saludar(nombre){
    return `hola ${nombre}`;
}

let resSaludo = saludar('Pepito');
console.log(resSaludo);

function retornarValores(){
    return [1, 3, 'hola'];
}

console.log(retornarValores());

// ES6 ⚡⚡ ARROW FUNCTIONS

const saludar2 = () => {
    console.log('hola desde un arrow function');
}

saludar2();

const sumar = (num1, num2) => {
    return num1 + num2;
}

console.log(sumar(2,6));

// automaticamente me retorna la ejecucion
const multiPor3 = (num) => {
    return num * 3;
}

const multiPor2 = num => num * 2;

console.log(multiPor2(6));
console.log(multiPor2(21));

const restaVarios = (a, b, c) => a - b - c;
console.log(restaVarios(45,2,3));