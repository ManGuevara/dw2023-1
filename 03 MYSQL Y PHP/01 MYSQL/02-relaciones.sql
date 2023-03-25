-- TABLAS PIVOTE
CREATE TABLE personajes (
    per_act_id INT NOT NULL,
    per_peli_id INT NOT NULL,
    per_nombre VARCHAR(100) NOT NULL
)

INSERT INTO personajes (per_act_id, per_peli_id, per_nombre) VALUES
    (1, 1, 'Spiderman'),
    (2, 1, 'MJ'),
    (3, 2, 'Neo'),
    (4, 2, 'Trinity'),
    (5, 4, 'Jack'),
    (6, 4, 'Rose'),
    (7, 6, 'Jack Torrance'),
    (8, 6, 'Wendy Torrance')

-- RELACIONAR DOS TABLAS 
-- peliculas - personajes

SELECT *
    FROM peliculas, personajes
        WHERE peliculas.peli_id = personajes.per_peli_id

SELECT
    peliculas.peli_nombre,
    personajes.per_nombre
    FROM peliculas, personajes
        WHERE peliculas.peli_id = personajes.per_peli_id

-- actores y personajes

SELECT *
    FROM actores, personajes
        WHERE actores.act_id = personajes.per_act_id
