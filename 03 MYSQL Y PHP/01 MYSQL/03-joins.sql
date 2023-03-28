SELECT *
    FROM peliculas, directores
        WHERE peliculas.peli_dire_id = directores.dire_id

-- ⚡⚡ JOINS ⚡⚡
SELECT *
    FROM peliculas
        INNER JOIN directores
            ON peliculas.peli_dire_id = directores.dire_id

-- ALIAS DE CAMPOS && ALIAS DE TABLAS
SELECT 
    a.peli_nombre AS pelicula,
    CONCAT(b.dire_nombres, ' ', b.dire_apellidos) AS director
    FROM peliculas a
        INNER JOIN directores b
            ON a.peli_dire_id = b.dire_id


-- ⚡⚡ LEFT
SELECT *
    FROM peliculas a
        LEFT JOIN directores b
            ON a.peli_dire_id = b.dire_id

-- ⚡⚡ RIGHT
SELECT *
    FROM peliculas a
        RIGHT JOIN directores b
            ON a.peli_dire_id = b.dire_id

INSERT INTO directores (dire_nombres, dire_apellidos) VALUES
    ('Ron', 'Howard'),
    ('Steven', 'Spilberg'),
    ('Night', 'Salaman')

-- ⚡⚡ 3 TABLAS
INSERT INTO personajes (per_nombre) VALUES
    ('Batman'),
    ('El lobo'),
    ('La mascara')

SELECT *
    FROM peliculas a
        INNER JOIN personajes b ON a.peli_id = b.per_peli_id -- A
        INNER JOIN actores c ON c.act_id = b.per_act_id      -- B
 