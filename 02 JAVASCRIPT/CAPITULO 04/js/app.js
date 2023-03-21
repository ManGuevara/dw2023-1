const btn = document.querySelector('.btn');
const artista = document.querySelector('.search');
const discBloque = document.querySelector('.section__right__contenido__resultado__discografia');

const obtenerJson = async function(artistaABuscar){
    // console.log(artistaABuscar);
    try {
        const data = await fetch(`https://api.discogs.com/database/search?q=${artistaABuscar}&type=master&artist=${artistaABuscar}&format=album&token=RWajOPvlzDVRGcezmLobvGJkyfmIcrbmanBAjLxg`);
        // console.log(data.json());
        const resultado = await data.json();
        // console.log(resultado.results);

        let plantilla = '';
        resultado.results.forEach(el => {
            console.log(el);
            plantilla += `
                <div class="section__right__contenido__resultado__discografia__item">
                    <h3 class="section__right__contenido__resultado__discografia__item--titulo">${el.title}</h3>
                    <div class="section__right__contenido__resultado__discografia__item__left">
                        <img src="${el.cover_image}" alt="">
                        <div class="section__right__contenido__resultado__discografia__item__left__info">
                            <p>Año: <span>${el.year}</span></p>
                            <p>País: <span>${el.country}</span></p>
                        </div>
                    </div>
                </div>
            `;
        });
        // console.log(plantilla);
        discBloque.innerHTML = plantilla;

        
    } catch (error) {
        console.log(error);
    }
}


btn.addEventListener('click', function(){
    // console.log(artista.value);
    obtenerJson(artista.value);
})