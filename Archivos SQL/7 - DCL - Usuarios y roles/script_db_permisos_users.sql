-- Creo el usuario si no existe
CREATE USER IF NOT EXISTS 'usuario_lector'@'localhost' IDENTIFIED BY 'dbselect';
-- Asigno permisos de solo lectura a todas las tablas en fitnessclub_db
GRANT SELECT ON fitnessclub_db.* TO 'usuario_lector'@'localhost';
-- No permito eliminación de registros
REVOKE DELETE ON fitnessclub_db.* FROM 'usuario_lector'@'localhost';

-- Creo usuario con permisos de lectura, inserción y modificación
CREATE USER IF NOT EXISTS 'usuario_modificador'@'localhost' IDENTIFIED BY 'dbupdate';
-- Asigno permisos de lectura, inserción y modificación a todas las tablas
GRANT SELECT, INSERT, UPDATE ON fitnessclub_db.* TO 'usuario_modificador'@'localhost';
-- No permito eliminación de registros
REVOKE DELETE ON fitnessclub_db.* FROM 'usuario_modificador'@'localhost';