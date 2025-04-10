-- Volcando datos para la tabla control_horario.empleados: ~3 rows (aproximadamente)
INSERT INTO `empleados` (`id`, `personas_id`, `cargo`) VALUES
	(2501, 1, 'Jefe de turno'),
	(2502, 2, 'Analista de ventas'),
	(2503, 3, 'Jefa RRHH');

-- Volcando datos para la tabla control_horario.personas: ~3 rows (aproximadamente)
INSERT INTO `personas` (`id`, `nombre`, `edad`, `genero`) VALUES
	(1, 'Leyser Ariel Pena Orellana', 22, 'Masculino'),
	(2, 'Jose Alfredo Rodriguez Hernandez', 38, 'Masculino'),
	(3, 'Rosaura Asucena del Carmen Vasquez', 54, 'Femenino');

-- Volcando datos para la tabla control_horario.registros: ~3 rows (aproximadamente)
INSERT INTO `registros` (`id`, `empleado_id`, `hora_entrada`, `hora_salida`, `fecha`) VALUES
	(1, 2502, '07:55:00', '16:01:00', '2025-04-09'),
	(2, 2501, '07:58:00', '16:20:00', '2025-04-09'),
	(3, 2503, '09:00:00', '16:59:00', '2025-04-09');