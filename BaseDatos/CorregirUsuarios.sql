Use RinconBotanico;
SELECT * FROM usuarios;
UPDATE usuarios SET idestado = "A";
ALTER TABLE usuarios;
SET FOREIGN_KEY_CHECKS = 0;
ALTER TABLE usuarios ADD FOREIGN KEY(idEstado) REFERENCES estado(idEstado); SET FOREIGN_KEY_CHECKS = 1;
ALTER TABLE usuarios ADD FOREIGN KEY(idProceso) REFERENCES proceso(idProceso); SET FOREIGN_KEY_CHECKS = 2;