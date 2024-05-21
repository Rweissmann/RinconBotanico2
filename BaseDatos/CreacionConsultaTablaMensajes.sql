USE `RinconBotanico`;
CREATE TABLE IF NOT EXISTS `RinconBotanico`.`mensajes`  (
`idMensajes` INT NOT NULL AUTO_INCREMENT,
`NombreYApellido` VARCHAR(100) NOT NULL,
`Direccion` VARCHAR(200) NOT NULL,
`CgoArea` VARCHAR(100) NOT NULL,
`Area` VARCHAR(100) NOT NULL,
`Mensaje` VARCHAR(600) NOT NULL,
PRIMARY KEY (`idMensajes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


SELECT * FROM mensajes;
INSERT INTO mensajes (idmensajes, NombreYApellido, Email, Direccion, Celular, Area, Mensaje) VALUES (1, 'Raul Weissmann', 'rweissmann@gmail.com', 'Guemes 3490 4to 13', '+5491137619533', 'Cursos', 'blabla');
INSERT INTO mensajes (idmensajes, NombreYApellido, Email, Direccion, Celular, Area, Mensaje) VALUES ( 2, 'Juan Carlos Hedger','jchedger@gmail,com', 'Nicasio Oroño 43 3er Piso Ascensor - Rosario', '+543426508815', 'Oficina del Litoral', 'Quiero asociarme');
SELECT * FROM mensajes;