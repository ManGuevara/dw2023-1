const btn = document.querySelector('button');
const tareaInput = document.querySelector('.tarea');
const alerta = document.querySelector('.alerta');
const tareaCaja = document.querySelector('ul');

// DOM -> DOCUMENT OBJECT MODEL -> EL HTML
btn.addEventListener('click', function(){
    // console.log(tareaInput.value);
    const tarea = tareaInput.value;
    // console.log(tarea);
    if(tarea === ''){
        alerta.textContent = 'Debes ingresar una tarea 💥';
    } else {
        alerta.innerHTML = '';
        const li = `<li>${tarea}</li>`;
        tareaCaja.insertAdjacentHTML('afterbegin', li);
        tareaInput.value = '';
    }
});

// 💥💥💥 esto es a proposito
// const listaTareas = document.querySelectorAll('li');
// // console.log(listaTareas);
// for(let i = 0; i < listaTareas.length; i++){
//     // console.log(listaTareas[i]);
//     listaTareas[i].addEventListener('click', function(){
//         // console.log('hiciste click en li');
//         listaTareas[i].remove();
//     });
// }

tareaCaja.addEventListener('click', function(evento){
    console.log(evento.target.tagName);
    if(evento.target.tagName === 'LI'){
        evento.target.remove();
    }
});

const a = document.querySelector('a');
a.addEventListener('click', function(e){
    e.preventDefault();
    //muestra la ventana
})