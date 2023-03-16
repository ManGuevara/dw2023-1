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