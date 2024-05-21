CREATE PROCEDURE `PlantasDataFull` ()
BEGIN
USE RinconBotanico;
SELECT p.idPlantas, p.PlantasNombre, p.CategoriaDescripcion, dp.Ubicacion, dp.Sustrato, dp.Riego, dp.Floracion, dp.Tamano, dp.Observaciones, ImagenesLinkFoto FROM Plantas p LEFT JOIN DataPlantas dp ON p.idPlantas=dp.idPlantas LEFT JOIN Imagenes ip ON ip.idPlantas=dp.idPlantas;

END