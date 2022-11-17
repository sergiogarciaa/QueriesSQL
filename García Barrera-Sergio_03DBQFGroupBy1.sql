CREATE TABLE Sheet1(QUESTIONS VARCHAR(10),RESPONSES VARCHAR(10));
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('','Para conectar rápido, http://sql.ldtsynergy.com');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Número de horas estudiadas en cada sala de estudio','SELECT sum(ush_horas), sal_descripcion
FROM usuarios_horas JOIN usuarios ON (ush_usuario = usu_id) JOIN salas ON (usu_sala = sal_id)
GROUP BY sal_descripcion');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de todas las salas y el número de estudiantes adscritos a cada sala','SELECT sal_descripcion, COUNT(usu_id)
FROM salas LEFT JOIN usuarios ON (sal_id=usu_sala)
GROUP BY sal_id');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Número de horas total estudiadas en Diciembre','SELECT sum(ush_horas), cad_mes
FROM usuarios_horas LEFT JOIN calendario_dias ON (ush_dia = cad_id)
WHERE cad_mes = 12');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Número de alumnos que han ido a estudiar en Junio. Muestra el resultado para cada sala.','SELECT cad_mes, COUNT(usu_id), sal_descripcion
FROM calendario_dias JOIN usuarios_horas ON (cad_id=ush_dia) JOIN usuarios ON (ush_usuario = usu_id) JOIN salas ON (usu_sala = sal_id)
WHERE cad_mes = 6
GROUP BY sal_id');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de todos los alumnos y el número total de horas acumuladas por cada uno.','SELECT usu_nombre, usu_apellidos, SUM(ush_horas)
FROM usuarios RIGHT JOIN usuarios_horas ON (usu_id=ush_usuario)
GROUP BY usu_id');
