# mysql -u root
# mysql -u <usuario> -p

# ⚡⚡ COMANDOS INICIALES ⚡⚡
# QUERIES -> CONSULTAS

show databases
SHOW DATABASES

CREATE DATABASE dw2023_1

-- ALERTA EJECUTAR ESTE COMANDO CON MUCHO CUIDADO 💥💥
DROP DATABASE dw2023_1

USE dw2023_1

CREATE TABLE personas (
    per_id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    per_nombre VARCHAR(50) NOT NULL,
    per_apellido VARCHAR(50) NOT NULL,
    per_dni CHAR(8) UNIQUE NOT NULL,
    per_fechaNac DATETIME
)

SHOW TABLES

DROP TABLE personas # CON MUCHO CUIDADO 💥💥

DESC personas

ALTER TABLE personas ADD COLUMN per_genero VARCHAR(15)

ALTER TABLE personas DROP COLUMN per_genero

ALTER TABLE personas ADD COLUMN per_genero VARCHAR(15) AFTER per_apellido

INSERT INTO personas (per_nombre, per_apellido, per_dni) VALUES 
    ('Jorge', "Salas", '11111111')

SELECT * FROM personas

INSERT INTO personas (per_nombre, per_apellido, per_genero, per_dni, per_fechaNac) VALUES 
    ("Malena", 'Casas', 'f', '22222222', '2000-10-10'),
    ("Pedro", 'Sifuentes', 'M', '33333333', '2010-12-12'),
    ("Sofia", 'Rodriguez', 'F', '44444444', '2016-05-05')

INSERT INTO personas (per_id, per_nombre, per_apellido, per_genero, per_dni, per_fechaNac) VALUES 
    (1001, 'Peter', 'Castle', 'M', '77777772', '1980-02-02 15:00:00')

INSERT INTO personas (per_nombre, per_apellido, per_genero, per_dni, per_fechaNac) VALUES 
    ('Peter', 'Castle', 'M', '88888881', '1980-02-02 15:00:00')

-- 💥💥 CON CUIDADO
DELETE FROM personas

DELETE FROM personas WHERE per_id = 4

-- 💥💥 CON CUIDADO Y CON ESTO BORRAMOS LA METADATA DE LA TABLA
TRUNCATE personas
-- ---------------------------------------------------------------

CREATE TABLE peliculas (
    peli_id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    peli_nombre VARCHAR(50) NOT NULL,
    peli_genero VARCHAR(20) NOT NULL,
    peli_estreno DATE NOT NULL,
    peli_restricciones VARCHAR(5)
)

INSERT INTO peliculas (peli_nombre, peli_genero, peli_estreno, peli_restricciones) VALUES
    ('Spiderman: No way home', 'Acción', '2021-12-15', 'PG-13'),
    ('Matrix', 'ciencia ficcion', '1999-10-10', 'PG-13'),
    ('El codigo enigma', 'Belica', '2017-05-05', 'PG-16'),
    ('Titanic', 'Drama Romantico', '1997-09-09', 'PG'),
    ('Interestellar', 'Ciencia Ficción', '2014-02-02', 'PG'),
    ('El Resplandor', 'Terror', '1980-04-04', 'PG-18'),
    ('50 sombras de gray', 'Thriller', '2013-06-06', 'PG-18'),
    ('Django', 'Wenstern', '2016-12-12', 'PG-16'),
    ('Pulp Fiction', 'Policial', '2010-10-10', 'PG-16')


SELECT * FROM peliculas

SELECT * FROM peliculas WHERE peli_id = 3
SELECT * FROM peliculas WHERE peli_nombre like 'El%'
SELECT * FROM peliculas WHERE peli_nombre like '%r%'
SELECT * FROM peliculas WHERE peli_nombre like 'el respla%'
SELECT * FROM peliculas WHERE peli_genero = 'ciencia ficcion'
SELECT * FROM peliculas WHERE peli_restricciones = 'pg-16'

INSERT INTO peliculas (peli_nombre, peli_genero, peli_estreno, peli_restricciones) VALUES
    ('El Resplandor 2', 'Terror', '1982-04-04', 'PG-18')

-- ⚡⚡ ORDER BY
SELECT * FROM peliculas ORDER BY peli_id DESC

SELECT * FROM peliculas ORDER BY peli_nombre DESC
SELECT * FROM peliculas ORDER BY peli_estreno DESC

SELECT * FROM peliculas WHERE peli_restricciones = 'pg-16' ORDER BY peli_nombre

-------------------------------------------------------------------
CREATE TABLE actores (
    act_id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    act_nombres VARCHAR(100) NOT NULL,
    act_apellidos VARCHAR(100) NOT NULL
)

INSERT INTO actores (act_nombres, act_apellidos) VALUES
    ('Tom', 'Holland'),
    ('Zendaya', 'Colleman'),
    ('Keanu', 'Revees'),
    ('Carrie-Anne', 'Moss'),
    ('Leonardo', 'Dicaprio'),
    ('Kate', 'Winslet'),
    ('Jack', 'Nicolson'),
    ('Shelly', 'Duval'),
    ('Jamie', 'Fox'),
    ('Samuel', 'L. Jackson'),
    ('John', 'Travolta')

# HACER UN QUERY ME DEVUELVA LOS NOMBRES Y LOS APELLIDOS EN UNA SOLA COLUMNA
SELECT * FROM actores

SELECT CONCAT(act_nombres, act_apellidos) FROM actores
SELECT CONCAT(act_nombres, ' ', act_apellidos) FROM actores

-- ⚡⚡ ALIAS DE CAMPOS
SELECT CONCAT(act_nombres, ' ', act_apellidos) AS actor FROM actores
SELECT CONCAT(act_nombres, ' ', act_apellidos) AS actor_de_reparto FROM actores
SELECT CONCAT(act_nombres, ' ', act_apellidos) AS "actor de reparto" FROM actores

-- HACER UN QUERY DONDE ME DEVULVA LOS NOMBRES Y APELLIDOS EN UNA SOLA COLUMNA Y QUE ESTEN ORDENADOS POR APELLIDO ASCENDENTE

SELECT CONCAT(act_nombres, ' ', act_apellidos) AS actor FROM actores ORDER BY act_apellidos

SELECT SUBSTRING(act_nombres, 2, 3) FROM ACTORES

-- HACER UN QUERY DONDE ME DEVULVA LOS NOMBRES Y APELLIDOS EN UNA SOLA COLUMNA Y EN LA SIGUIENTE COLUMNA EL CORREO CORPORATIVO DEL USUARIO
-- ejem: Eduardo Arroyo -> earroyo@miempresa.com

SELECT SUBSTRING(act_nombres, 1, 1) FROM actores

SELECT 
    CONCAT(act_nombres, ' ', act_apellidos) AS actor,
    CONCAT(SUBSTRING(act_nombres, 1, 1), act_apellidos, '@miempresa.com') AS email
        FROM actores
