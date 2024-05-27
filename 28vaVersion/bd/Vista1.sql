CREATE OR REPLACE VIEW PlantasConFoto AS SELECT plantas.idPlantas, PlantasNombre, idCategoria, CategoriaDescripcion, imagenes.ImagenesLinkFoto FROM RinconBotanico.plantas INNER JOIN RinconBotanico.imagenes WHERE imagenes.idPlantas=plantas.idPlantas;
SELECT * FROM PlantasConFoto;
