// console.log('funcionaaaaaaaaaaaaa');

let nav = document.querySelector('.nav');
// nav.classList.add('cambioNav');
let menu = document.querySelector('.nav__contenedor__menu');
let btn = document.querySelector('.nav__contenedor--btn');

// console.log(scrollY);
btn.addEventListener('click', function(){
    // console.log('hiciste click');
    // menu.classList.add('mostrarMenu');
    menu.classList.toggle('mostrarMenu');
})


window.addEventListener('scroll', function(){
    // console.log('hiciste scroll', scrollY);
    if(scrollY > 0){
        nav.classList.add('cambioNav');
    } else{
        nav.classList.remove('cambioNav');
    }
});