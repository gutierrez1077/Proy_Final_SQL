USE centro_odontologico;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `costo_total_por_servicio`(Cod_Servicio INT) RETURNS decimal(8,2)
    READS SQL DATA
    -- realiza un calculo del costo total (suma de insumos utilizados) por cada servicio dentro de la clinica
BEGIN
DECLARE Suma_de_insumos DECIMAL (8,2);

SET Suma_de_insumos = (SELECT Sum(Costo) FROM insumos i
					WHERE i.Cod_Servicio = Cod_Servicio);
RETURN Suma_de_insumos;
END$$
DELIMITER ;

SELECT costo_total_por_servicio(10) as costo;


DELIMITER //
CREATE DEFINER=`root`@`localhost` FUNCTION `cantidad_profesionales_por_cada_especialidad`(id_especialidad INT) RETURNS int
    READS SQL DATA
BEGIN
DECLARE especialidad_function_2 int;
SET especialidad_function_2= (SELECT COUNT(especialidad) FROM profesionales p
							WHERE p.especialidad=id_especialidad
							GROUP BY p.especialidad);
RETURN especialidad_function_2;
END //

SELECT cantidad_profesionales_por_cada_especialidad (1) AS especialistas;