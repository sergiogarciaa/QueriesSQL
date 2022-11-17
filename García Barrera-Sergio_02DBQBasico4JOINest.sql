CREATE TABLE Sheet1(QUESTIONS VARCHAR(10),RESPONSES VARCHAR(10));
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('','Para conectar rápido, http://sql.ldtsynergy.com');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de todas las salas con los nombres y apellidos de los estudiantes que tienen','SELECT sal_descripcion, usu_nombre, usu_apellidos
FROM salas RIGHT JOIN usuarios ON (usu_sala=sal_id)');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado con nombre y apellidos de los registros de horas de Dic 2008
(SIN USAR IN)','SELECT DISTINCT usu_nombre, usu_apellidos, ush_horas, cad_anyo, cad_mes
FROM usuarios JOIN usuarios_horas ON (usu_id=ush_usuario) JOIN calendario_dias ON (cad_id=ush_dia)
WHERE cad_mes=12 AND cad_anyo=2008
ORDER BY usu_nombre, usu_apellidos');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de estudiantes que han estudiado en Junio 09 (HAZLA MODIFICANDO LA ANTERIOR)','SELECT DISTINCT usu_nombre, usu_apellidos, cad_anyo, cad_mes
FROM usuarios JOIN usuarios_horas ON (usu_id=ush_usuario) JOIN calendario_dias ON (cad_id=ush_dia)
WHERE cad_mes=6 AND cad_anyo=2009
ORDER BY usu_nombre, usu_apellidos');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Otro modo de hacer la anterior usando IN','S');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de los usuarios que no han ido a estudiar nunca','SELECT usu_lunes, usu_martes, usu_lunes, usu_jueves, usu_viernes, usu_nombre, usu_apellidos FROM usuarios WHERE usu_lunes = 0 AND usu_martes = 0 AND usu_miercoles = 0 AND usu_jueves = 0 AND usu_viernes = 0');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Ver antes','https://share.voomly.com/v/DmOA7RO4j');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Algunas Soluciones Q Basico3','https://share.voomly.com/v/XRaqULOKc');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('','https://share.voomly.com/v/QGbVfk4Og');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('QUESTIONS','RESPONSES');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('','Para conectar rápido, http://sql.ldtsynergy.com');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de todas las salas con los nombres y apellidos de los estudiantes que tienen','SELECT sal_descripcion, usu_nombre, usu_apellidos
FROM salas RIGHT JOIN usuarios ON (usu_sala=sal_id)');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado con nombre y apellidos de los registros de horas de Dic 2008
(SIN USAR IN)','SELECT DISTINCT usu_nombre, usu_apellidos, ush_horas, cad_anyo, cad_mes
FROM usuarios JOIN usuarios_horas ON (usu_id=ush_usuario) JOIN calendario_dias ON (cad_id=ush_dia)
WHERE cad_mes=12 AND cad_anyo=2008
ORDER BY usu_nombre, usu_apellidos');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de estudiantes que han estudiado en Junio 09 (HAZLA MODIFICANDO LA ANTERIOR)','SELECT DISTINCT usu_nombre, usu_apellidos, cad_anyo, cad_mes
FROM usuarios JOIN usuarios_horas ON (usu_id=ush_usuario) JOIN calendario_dias ON (cad_id=ush_dia)
WHERE cad_mes=6 AND cad_anyo=2009
ORDER BY usu_nombre, usu_apellidos');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Otro modo de hacer la anterior usando IN','S');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de los usuarios que no han ido a estudiar nunca','SELECT usu_lunes, usu_martes, usu_lunes, usu_jueves, usu_viernes, usu_nombre, usu_apellidos FROM usuarios WHERE usu_lunes = 0 AND usu_martes = 0 AND usu_miercoles = 0 AND usu_jueves = 0 AND usu_viernes = 0');
