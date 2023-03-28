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

CREATE TABLE directores (
    dire_id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    dire_nombres VARCHAR(50) NOT NULL,
    dire_apellidos VARCHAR(50) NOT NULL
)

INSERT INTO directores (dire_nombres, dire_apellidos) VALUES
    ('Jon', 'Watts'),
    ('Lana', 'Wachoswky'),
    ('James', 'Cameron'),
    ('Christopher', 'Nolan'),
    ('Stanley', 'Kubric'),
    ('Quentin', 'Tarantino')

ALTER TABLE peliculas ADD COLUMN peli_dire_id INT AFTER peli_id

UPDATE peliculas SET peli_dire_id = 1 WHERE peli_id = 1
UPDATE peliculas SET peli_dire_id = 2 WHERE peli_id = 2
UPDATE peliculas SET peli_dire_id = 3 WHERE peli_id = 4
UPDATE peliculas SET peli_dire_id = 4 WHERE peli_id = 5
UPDATE peliculas SET peli_dire_id = 5 WHERE peli_id = 6
UPDATE peliculas SET peli_dire_id = 6 WHERE peli_id = 8
UPDATE peliculas SET peli_dire_id = 6 WHERE peli_id = 9

SELECT *
    FROM peliculas, directores
        WHERE peliculas.peli_dire_id = directores.dire_id
