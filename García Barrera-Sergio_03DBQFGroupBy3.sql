CREATE TABLE Sheet1(QUESTIONS VARCHAR(10),RESPONSES VARCHAR(10));
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('BASE DE DATOS   estudio','Para conectar rápido, http://sql.ldtsynergy.com');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Número de horas de estudio acumuladas en cada perfil (que aparezcan todos) durante Octubre.','SELECT cad_mes, ush_horas, per_descripcion
FROM calendario_dias RIGHT JOIN usuarios_horas ON (cad_id=ush_dia) RIGHT JOIN usuarios ON (ush_usuario=usu_id)  RIGHT JOIN perfiles ON (usu_perfil = per_id)
WHERE cad_mes = 10
GROUP BY per_id
');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de todas las salas con los perfiles indicando cuántos estudiantes hay de ese perfil y en esa sala. Si no hay ninguno, que aparezca "NINGUNO"','SELECT sal_descripcion, per_descripcion,
IF(COUNT(usu_id) = 0,'NINGUNO', COUNT(usu_id))
FROM salas LEFT JOIN usuarios ON (sal_id = usu_sala) LEFT JOIN perfiles ON (usu_perfil = per_id)
GROUP  BY sal_id, per_id');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de todos los alumnos y el número total de veces que ha ido a estudiar.','SELECT concat(usu_nombre, " ", usu_apellidos), COUNT(usu_id)
FROM usuarios RIGHT JOIN usuarios_horas ON (usu_id=ush_usuario)
GROUP BY usu_id');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Cuando un alumno va a estudiar un día, ¿cuánto tiempo estudia en promedio? Haz el informe para cada perfil','SELECT AVG(ush_horas), per_descripcion
FROM perfiles RIGHT JOIN usuarios ON (per_id = usu_perfil )RIGHT JOIN usuarios_horas ON (usu_id=ush_usuario)
GROUP BY per_id');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de todas las salas y el número de perfiles diferentes que hay en cada una','SELECT sal_descripcion, COUNT(per_id)
FROM salas LEFT JOIN usuarios ON (sal_id=usu_sala) LEFT JOIN perfiles ON (usu_perfil = per_id)
GROUP BY sal_id');
