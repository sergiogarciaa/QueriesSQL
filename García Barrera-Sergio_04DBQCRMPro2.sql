CREATE TABLE Sheet1(QUESTIONS VARCHAR(10),RESPONSES VARCHAR(10),Column_3 VARCHAR(10));
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('CRM','Para conectar rápido, http://sql.ldtsynergy.com','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('¿Qué clases hay hoy en los grupos LAW?','SELECT DiaSemana, Alias, idGrupo
FROM modulos JOIN  modulos_has_TramosHorarios ON(modulos_idModulo= idModulo)
WHERE idGrupo LIKE 'law%' AND DiaSemana = weekday(now())+1','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('¿Qué clases están siendo ahora?','SELECT Alias, idGrupo, DiaSemana, HoraInicio, HoraFin
FROM modulos JOIN modulos_has_TramosHorarios ON (modulos_idModulo = idModulo) JOIN TramosHorarios ON(TramosHorarios_idTramo=idTramo)
WHERE DiaSemana = WEEKDAY(NOW())+1 AND curtime() BETWEEN HoraInicio AND HoraFin','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('¿Qué profesores no están en clase en este instante?','SELECT Iniciales, nombre, apellidos
FROM profesores 
WHERE idProfesor NOT IN
(
SELECT Profesores_idProfesor
FROM modulos JOIN modulos_has_TramosHorarios ON (TramosHorarios_idTramo = idModulo) JOIN TramosHorarios ON (idTramo= TramosHorarios_idTramo)
WHERE weekday(now())+1 AND curdate() BETWEEN HoraInicio AND HoraFin
)','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('¿Cuántos alumnos hay que no tengan todas las clases?','SELECT COUNT(alm_idAlumno)
FROM  excepciones JOIN TiposExcepciones ON (TipoExcepcion = Tipo)
WHERE  cursada','SELECT COUNT(distinct alm_idAlumno)
FROM  excepciones JOIN TiposExcepciones ON (TipoExcepcion = Tipo)
WHERE  cursada');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('Listado de los alumnos que no tienen que ir a todas las clases, indicando cuántas horas libres tienen a la semana','SELECT CONCAT(a.Nombre, ' ',a.Apellidos) "Nombre y Apellidos", COUNT(idModulohasTramo) "Horas Libre"
FROM  excepciones JOIN TiposExcepciones ON (TipoExcepcion = Tipo) JOIN  modulos_has_TramosHorarios ON( modulos_idModulo= mod_idModulo) JOIN alumnos a ON ( alm_idAlumno = idAlumno)
WHERE cursada
GROUP BY  alm_idAlumno','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('Listado de todas las asignaturas indicando el número de alumnos que ya han cursado esa asignatura.','SELECT idModulo, AlumnosEx FROM (
     SELECT mod_idModulo , count(alm_idAlumno ) AlumnosEx
     FROM excepciones JOIN TiposExcepciones on (TipoExcepcion = Tipo) WHERE cursada 
     GROUP BY mod_idModulo) TABLA_A 
     right JOIN modulos on (mod_idModulo=idModulo)','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('Listado de todas las asignaturas indicando el número real de alumnos que tienen','SELECT B.idModulo, TotalAlum - AlumnosEx
FROM
    (SELECT idModulo, AlumnosEx FROM (
     SELECT mod_idModulo , count(alm_idAlumno ) AlumnosEx
     FROM excepciones JOIN TiposExcepciones on (TipoExcepcion = Tipo) WHERE cursada 
     GROUP BY mod_idModulo) TABLA_A 
     right JOIN modulos on (mod_idModulo=idModulo) ) A
JOIN
    (SELECT idModulo, COUNT(idAlumno) TotalAlum
     FROM modulos m 
     LEFT JOIN alumnos a ON (m.idGrupo = a.idGrupo)
     GROUP BY idModulo)B
     ON (A.idModulo = B.idModulo)','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('Un poco de teoría para la última query','https://share.voomly.com/v/D0jq1xilY','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('CRM','Para conectar rápido, http://sql.ldtsynergy.com','');
