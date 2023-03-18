// ⚡⚡ OBJETOS ⚡⚡
/*
    PROPIEDADES Y VALORES
    key - value pair
    CELULAR
    color -> plomo
    marca -> apple
    modelo -> iphone1000
    precio -> 1 000 000
    size -> 6.5'

    METODOS
*/

const celular = {
    color: 'mate',
    marca: 'iphone',
    precio: 5000,
    modelo: 'iphone 14 plus',
    accesorios: ['cargador', 'audifonos', 'pegatinas'],
    liberadoPeru: true,
    piezas: {
        pantalla: 'gorila glass',
        camFront: '12mp',
        camBack: '40mp'
    }
};

console.log(celular.color);
console.log(celular.accesorios[1]);
console.log(celular.piezas.pantalla);


const usuario = {
    nombre: 'Jaimito',
    correo: 'jaimito@gmail.com',
    dni: '12345678',
    edad: 31,
    // METODOS: FUNCIONES DENTRO DE UN OBJETO
    saludar: function(){
        console.log('hola a todos');    
    },
    obtenerEdad: function(fechaNac){
        return 2023 - fechaNac;
    }
};

console.log(usuario.edad);
usuario.saludar();
console.log(usuario.obtenerEdad(1920));
console.log('*******************');

// ⚡⚡ OBJETO THIS
// THIS hace referencia al objeto dentro de su ambito, contexto, scope o bloque donde se este ejecutando
// let nom = 'Edu';
// function llamar(){
//     let nom = 'Edu';
// }

console.log(this); // this hace referencia al objeto global -> window
console.log(document);
console.log(window);


// const bloque = document.querySelector('.bloque');

const personaje = {
    nombre: 'Joshi',
    correo: 'joshi@nintendo.com',
    skills: ['saltar', 'comer tortugas', 'sacar la lengua', 'correr', 'volar'],
    bgPeru: 'peru',
    imprimirNombre: function(){
        console.log(this.nombre);
    },
    imprimirthis: function(){
        console.log(this); // window??
        this.imprimirNombre();
    },
    saludar: () => {
        console.log(this); // no funciona como referencia al ambito del objeto 💥💥
    },
    imprimirSkils: function(etiqueta){
        let plantilla = '';
        for(let i = 0; i < this.skills.length; i++){
            if(i === 3){
                plantilla += `<h1 style="background-color: ${this.bgPeru};">${this.skills[i]}</h1>`;
            } else {
                plantilla += `<h1>${this.skills[i]}</h1>`;
            }

        }
        etiqueta.innerHTML = plantilla;
    }
}

const habilidadesEtiqueta = document.querySelector('.habilidades');

personaje.imprimirSkils(habilidadesEtiqueta);
