// console.log('funcionaaaaaaaaaaaaa');

let nav = document.querySelector('.nav');
// nav.classList.add('cambioNav');

// console.log(scrollY);

window.addEventListener('scroll', function(){
    // console.log('hiciste scroll', scrollY);
    if(scrollY > 0){
        nav.classList.add('cambioNav');
    } else{
        nav.classList.remove('cambioNav');
    }
});