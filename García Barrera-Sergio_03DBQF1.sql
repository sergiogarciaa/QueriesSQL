CREATE TABLE Sheet1(QUESTIONS VARCHAR(10),RESPONSES VARCHAR(10));
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('','Para conectar rápido, http://sql.ldtsynergy.com');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de los registros de estudio con 3 columnas: nombre y apellidos,  fecha, y numero de horas','SELECT concat(usu_nombre, ' ', usu_apellidos), concat(cad_dia, ' - ', cad_mes, ' - ', cad_anyo), ush_horas
FROM usuarios JOIN usuarios_horas ON (usu_id=ush_usuario) JOIN calendario_dias ON (ush_dia=cad_id)');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Filtra el listado anterior y mostrar solo los registros correspondientes a lunes','SELECT concat(usu_nombre, ' ', usu_apellidos), concat(cad_anyo, '-', cad_mes, '-', cad_dia),  weekday(concat(cad_anyo, '-', cad_mes, '-', cad_dia)), ush_horas
FROM usuarios JOIN usuarios_horas ON (usu_id=ush_usuario) JOIN calendario_dias ON (ush_dia=cad_id)
WHERE WEEKDAY(concat(cad_anyo, '-', cad_mes, '-', cad_dia)) = 0');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de registros de estudio indicando el tiempo estudiado en minutos','SELECT sum(ush_horas * 60) FROM usuarios_horas');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de usuarios indicando entre paréntesis la sala -descripción','SELECT usu_nombre, usu_apellidos, concat('(', sal_descripcion, ')' )
FROM usuarios JOIN salas ON (usu_sala=sal_id)');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Query que me devuelva el siguiente código HTML generado a partir de la tabla usuarios:
<a href="edit.jsp?usu=1234">Perez Garcia</a>
Donde 1234 debe ser el usu_id y Perez García será usu_apellidos','SELECT concat('<a href="edit.jsp?usu=" ', '>', usu_id, " ",usu_apellidos, '</a>')
FROM usuarios');
