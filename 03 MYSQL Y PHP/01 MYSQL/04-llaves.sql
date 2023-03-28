-- ⚡⚡ LLAVES FORANEAS
ALTER TABLE peliculas CHANGE COLUMN peli_dire_id peli_dire_id INT(10) UNSIGNED 

-- ⚡⚡ RESTRICCIONES
/*
    -- RESTRICT
        Por defecto, impide realizar modificaciones que atenten la integridad refrencial de la relacion. ejem no permite borrar o actualizar
    -- CASCADE
        Al actualizar o borrar lo datos referenciados, tambien se actualiza o se borra los datos de la tabla dependiente
    -- SET NULL
        Se establece campos null a la tabla dependiente al momento de cambiar o borrar
    -- NO ACTION
        no hace nada
*/

ALTER TABLE peliculas 
    ADD CONSTRAINT fk_direId FOREIGN KEY (peli_dire_id) 
    REFERENCES directores (dire_id)
    ON DELETE RESTRICT ON UPDATE RESTRICT

DELETE FROM directores WHERE dire_id = 1

ALTER TABLE peliculas DROP CONSTRAINT fk_direId

ALTER TABLE peliculas 
    ADD CONSTRAINT fk_direId FOREIGN KEY (peli_dire_id) 
    REFERENCES directores (dire_id)
    ON DELETE CASCADE ON UPDATE CASCADE

DELETE FROM directores WHERE dire_id = 1