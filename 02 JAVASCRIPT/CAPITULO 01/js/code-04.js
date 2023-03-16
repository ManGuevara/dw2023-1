// ⚡⚡ ARRAYS ⚡⚡
// 🔥🔥 son un tipo de objeto 
// conjunto de elementos
// lista de elementos

const nums = [12, 5, 1000, 4564, 645, 687, 534, 963.3];
nums.sort();
console.log(nums);
console.log(nums.length);

// 🔥🔥 INDICES
console.log(nums[5]);
console.log(nums[nums.length - 1]);

const aMixto = [12, '12', true, ['ryo', 'blanka'], {nom: 'Edu'}];
console.log(aMixto);
console.log(aMixto[3][0]);
console.log(aMixto[4].nom);
aMixto.push('Hola mundo');
console.log(aMixto);

// aMixto = [1, 2, 3];
const personajes = ['joshi', 'mario', 'ryo', 'ken'];
console.log(personajes);
console.log('**********************');
const bloque = document.querySelector('.bloque');
// bloque.innerHTML = personajes;

// ⚡⚡ LOOPS - FOR -> CICLOS DE REPTICIONES - BUCLES

let html = "";

// 3 ARGUMENTOS PROPIOS: CONTADOR, VALIDACION, SUMA O RESTA DEL CONTADOR
for (let contador = 0; contador < personajes.length; contador++){
    // console.log(personajes[contador]);
    // html = personajes[contador]; 💥💥💥
    // html = html + personajes[contador];
    //html += personajes[contador]; // => html = html + personajes[contador]
    html += `<h1>${personajes[contador]}</h1>`;
}

console.log(html);
bloque.innerHTML = html;