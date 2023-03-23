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

ALTER TABLE personas ADD COLUMN per_genero VARCHAR(15) BEFORE per_apellido

INSERT INTO personas (per_nombre, per_apellido, per_dni) VALUES 
    ('Jorge', "Salas", '11111111')

SELECT * FROM personas