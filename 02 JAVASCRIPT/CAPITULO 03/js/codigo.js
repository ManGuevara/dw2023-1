// console.log('funcionaaa');

const form = document.querySelector('.quiz-form');
const resultado = document.querySelector('.result');
const respCorrectas = ["A","A","A","A"];

form.addEventListener('submit', function(e){
    e.preventDefault();
    // console.log(e);
    // console.log(form.q1.value);
    // console.log(form.q2.value);
    // console.log(form.q3.value);
    // console.log(form.q4.value);
    const respUsuario = [
        form.q1.value,
        form.q2.value,
        form.q3.value,
        form.q4.value
    ];
    // console.log(respUsuario);
    let puntaje = 0;

    // respUsuario.forEach(elemento => {
    //     console.log(elemento);
    // });
    respUsuario.forEach(function(valor, indice){
        // console.log(elemento, index);
        // true o false
        if(valor === respCorrectas[indice]){
            // console.log(`la respuesta de la pregunta ${indice + 1} es correcta`);
            puntaje += 25;
        } else {
            // console.log(`la respuesta de la pregunta ${indice + 1} es erronea 💥💥`);
        }
    });
    // console.log(puntaje);
    // resultado.querySelector('span').textContent = puntaje;
    // resultado.classList.remove('d-none');
    let posicionEjeY = scrollY; // 158 -> 0
    // console.log(posicionEjeY);

    // setInterval(function(){
    //     console.log('soy un mensaje')
    // }, 1000);
    let animacionTop = setInterval(function(){
        if(posicionEjeY <= 0){
            // console.log('aqui tengo que parar');
            clearInterval(animacionTop);
        } else {
            posicionEjeY -= 7;
            // console.log(posicionEjeY);
            scrollTo(0, posicionEjeY);
        }
    }, 5);

    resultado.classList.remove('d-none');

    let sumaPuntajeTotal = 0;
    let velocidad = 3;

    let animacion2;

    function imprimirNota(){
        // console.log('repeticion');
        sumaPuntajeTotal += 2;
    }
    function repeticion(){
        velocidad *= 1.09;
        imprimirNota();
        if(sumaPuntajeTotal <= puntaje){
            animacion2 = setTimeout(repeticion, velocidad);
            resultado.querySelector('span').textContent = `${sumaPuntajeTotal}%`;
        }
    }

    repeticion();

    // let animacionSuma = setInterval(function(){
    //     if(sumaPuntajeTotal === puntaje){
    //         clearInterval(animacionSuma);
    //     } else {
    //         sumaPuntajeTotal += 5;
    //         velocidad += 50;
    //         // console.log(sumaPuntajeTotal);
    //     }
    //     resultado.querySelector('span').textContent = `${sumaPuntajeTotal}%`;
    // }, velocidad);



});