/* Delimitador cambiado a ; */
/* Conectando a 127.0.0.1 por MariaDB or MySQL (TCP/IP), usuario root, usando contraseña: Yes ... */
SELECT CONNECTION_ID();
SHOW VARIABLES;
/* Juego de caracteres: utf8mb4 */
SHOW /*!50002 GLOBAL */ STATUS;
SELECT NOW();
/* Conectado. ID de Hilo: 56 */
/* Reading function definitions from C:\Program Files\HeidiSQL\functions-mysql8.ini */
SHOW TABLES FROM `information_schema`;
SHOW DATABASES;
SHOW OPEN TABLES FROM control_horario WHERE `in_use`!=0;
USE `control_horario`;
/* Entrando a la sesión "Unnamed" */
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='control_horario';
SHOW TABLE STATUS FROM `control_horario`;
SHOW FUNCTION STATUS WHERE `Db`='control_horario';
SHOW PROCEDURE STATUS WHERE `Db`='control_horario';
SHOW TRIGGERS FROM `control_horario`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='control_horario';
/*  Escalando controles a DPI de pantalla: 125% */
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='control_horario' AND TABLE_NAME='empleados' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `empleados` FROM `control_horario`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='control_horario'   AND TABLE_NAME='empleados'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='control_horario'   AND TABLE_NAME='empleados'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW COLLATION;
SHOW ENGINES;
SHOW CREATE TABLE `control_horario`.`empleados`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='control_horario' AND tc.TABLE_NAME='empleados' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
SELECT * FROM `control_horario`.`empleados` LIMIT 1000;
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='control_horario' AND TABLE_NAME='personas' ORDER BY ORDINAL_POSITION;
SELECT `id`, LEFT(`nombre`, 256) FROM `control_horario`.`personas` GROUP BY `id`, `nombre` ORDER BY `nombre` LIMIT 10000;
SELECT `id`, LEFT(`nombre`, 256) FROM `control_horario`.`personas` GROUP BY `id`, `nombre` ORDER BY `nombre` LIMIT 10000;
INSERT INTO `control_horario`.`empleados` (`id`, `personas_id`, `cargo`) VALUES (2501, 1, 'Jefe de turno');
SELECT `id`, `personas_id`, `cargo` FROM `control_horario`.`empleados` WHERE  `id`=2501;
SELECT `id`, LEFT(`nombre`, 256) FROM `control_horario`.`personas` GROUP BY `id`, `nombre` ORDER BY `nombre` LIMIT 10000;
SELECT `id`, LEFT(`nombre`, 256) FROM `control_horario`.`personas` GROUP BY `id`, `nombre` ORDER BY `nombre` LIMIT 10000;
INSERT INTO `control_horario`.`empleados` (`id`, `personas_id`, `cargo`) VALUES (2502, 2, 'Analista de ventas');
SELECT `id`, `personas_id`, `cargo` FROM `control_horario`.`empleados` WHERE  `id`=2502;
SELECT `id`, LEFT(`nombre`, 256) FROM `control_horario`.`personas` GROUP BY `id`, `nombre` ORDER BY `nombre` LIMIT 10000;
SELECT `id`, LEFT(`nombre`, 256) FROM `control_horario`.`personas` GROUP BY `id`, `nombre` ORDER BY `nombre` LIMIT 10000;
INSERT INTO `control_horario`.`empleados` (`id`, `personas_id`, `cargo`) VALUES (2503, 3, 'Jefa RRHH');
SELECT `id`, `personas_id`, `cargo` FROM `control_horario`.`empleados` WHERE  `id`=2503;
SELECT * FROM `control_horario`.`empleados` ORDER BY `personas_id` ASC LIMIT 1000;
SELECT * FROM `control_horario`.`empleados` ORDER BY `personas_id` DESC LIMIT 1000;
SELECT * FROM `control_horario`.`empleados` LIMIT 1000;
SHOW INDEXES FROM `personas` FROM `control_horario`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='control_horario'   AND TABLE_NAME='personas'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='control_horario'   AND TABLE_NAME='personas'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `control_horario`.`personas`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='control_horario' AND tc.TABLE_NAME='personas' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
SELECT * FROM `control_horario`.`personas` LIMIT 1000;
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='control_horario' AND TABLE_NAME='registros' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `registros` FROM `control_horario`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='control_horario'   AND TABLE_NAME='registros'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='control_horario'   AND TABLE_NAME='registros'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `control_horario`.`registros`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='control_horario' AND tc.TABLE_NAME='registros' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
SELECT * FROM `control_horario`.`registros` LIMIT 1000;
SELECT `id`, LEFT(`cargo`, 256) FROM `control_horario`.`empleados` GROUP BY `id`, `cargo` ORDER BY `cargo` LIMIT 10000;
SELECT `id`, LEFT(`cargo`, 256) FROM `control_horario`.`empleados` GROUP BY `id`, `cargo` ORDER BY `cargo` LIMIT 10000;
INSERT INTO `control_horario`.`registros` (`id`, `empleado_id`, `hora_entrada`, `hora_salida`, `fecha`) VALUES (1, 2502, '07:55:00', '16:01:00', '2025-04-09');
SELECT `id`, `empleado_id`, `hora_entrada`, `hora_salida`, `fecha` FROM `control_horario`.`registros` WHERE  `id`=1;
SELECT `id`, LEFT(`cargo`, 256) FROM `control_horario`.`empleados` GROUP BY `id`, `cargo` ORDER BY `cargo` LIMIT 10000;
SELECT `id`, LEFT(`cargo`, 256) FROM `control_horario`.`empleados` GROUP BY `id`, `cargo` ORDER BY `cargo` LIMIT 10000;
INSERT INTO `control_horario`.`registros` (`id`, `empleado_id`, `hora_entrada`) VALUES (2, 2501, '00:09:08');
SELECT `id`, `empleado_id`, `hora_entrada`, `hora_salida`, `fecha` FROM `control_horario`.`registros` WHERE  `id`=2;
UPDATE `control_horario`.`registros` SET `hora_entrada`='07:58:00', `hora_salida`='00:09:38' WHERE  `id`=2;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `empleado_id`, `hora_entrada`, `hora_salida`, `fecha` FROM `control_horario`.`registros` WHERE  `id`=2;
UPDATE `control_horario`.`registros` SET `hora_salida`='16:20:00', `fecha`='2025-04-09' WHERE  `id`=2;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `empleado_id`, `hora_entrada`, `hora_salida`, `fecha` FROM `control_horario`.`registros` WHERE  `id`=2;
SELECT `id`, LEFT(`cargo`, 256) FROM `control_horario`.`empleados` GROUP BY `id`, `cargo` ORDER BY `cargo` LIMIT 10000;
SELECT `id`, LEFT(`cargo`, 256) FROM `control_horario`.`empleados` GROUP BY `id`, `cargo` ORDER BY `cargo` LIMIT 10000;
INSERT INTO `control_horario`.`registros` (`id`, `empleado_id`, `hora_entrada`, `hora_salida`, `fecha`) VALUES (3, 2503, '09:00:00', '16:59:00', '2025-04-09');
SELECT `id`, `empleado_id`, `hora_entrada`, `hora_salida`, `fecha` FROM `control_horario`.`registros` WHERE  `id`=3;
SHOW CREATE TABLE `control_horario`.`personas`;
SELECT * FROM `control_horario`.`personas` LIMIT 1000;
SHOW CREATE TABLE `control_horario`.`empleados`;
SELECT * FROM `control_horario`.`empleados` LIMIT 1000;
SHOW CREATE TABLE `control_horario`.`personas`;
SELECT * FROM `control_horario`.`personas` LIMIT 1000;
SHOW CREATE TABLE `control_horario`.`registros`;
SELECT * FROM `control_horario`.`registros` LIMIT 1000;