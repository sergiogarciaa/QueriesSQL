CREATE TABLE Sheet1(QUESTIONS VARCHAR(10),RESPONSES VARCHAR(10));
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('BASE DE DATOS   estudio','Para conectar rápido, http://sql.ldtsynergy.com');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de todos los perfiles y el número de estudiantes en cada perfil','SELECT per_descripcion, COUNT(usu_id)
FROM perfiles LEFT JOIN usuarios ON (per_id=usu_perfil)
GROUP BY per_id');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Promedio de horas estudiadas por día de cada alumno','SELECT concat(usu_nombre, " ", usu_apellidos), AVG(ush_horas)
FROM usuarios JOIN usuarios_horas ON (usu_id=ush_usuario)
GROUP BY usu_id');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de todas las salas y el número de asistentes en el mes de marzo','SELECT sal_descripcion, COUNT(usu_id), cad_mes
FROM calendario_dias JOIN usuarios_horas ON (ush_dia=cad_id) JOIN usuarios ON (usu_id=ush_usuario) JOIN salas ON (sal_id=usu_sala)
WHERE cad_mes = 3
GROUP BY sal_id');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Número de horas total estudiadas durante cada uno de los meses','SELECT SUM(ush_horas), concat("Mes ", cad_mes, " del ", cad_anyo)
FROM usuarios_horas JOIN calendario_dias ON(cad_id=ush_dia)
GROUP BY cad_id');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de todos los estudiantes y el número de horas de estudio que ha estudiado cada uno en total entre enero y marzo','SELECT concat(usu_nombre, " ", usu_apellidos), SUM(ush_horas), cad_mes
FROM usuarios JOIN usuarios_horas ON (usu_id=ush_usuario) JOIN calendario_dias ON(cad_id=ush_dia)
WHERE cad_mes BETWEEN 1 AND 3
GROUP BY usu_id');
