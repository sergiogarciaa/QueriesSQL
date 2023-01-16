CREATE TABLE Sheet1(QUESTIONS VARCHAR(10),RESPONSES VARCHAR(10),Column_3 VARCHAR(10));
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('CRM database','Para conectar rápido, http://sql.ldtsynergy.com','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('Listado de todos los módulos y el número de horas de clase que tienen a la semana','SELECT  nombre ,COUNT(numHoras), DiaSemana
FROM modulos m 
JOIN  modulos_has_TramosHorarios ON (IdModulo=modulos_idModulo)
GROUP BY idModulo
ORDER BY DiaSemana, nombre','SELECT  nombre ,COUNT(numHoras), DiaSemana
FROM modulos m 
LEFT JOIN  modulos_has_TramosHorarios ON (IdModulo=modulos_idModulo)
GROUP BY idModulo
ORDER BY DiaSemana, nombre');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('Listado de todos los profesores y el número de asignaturas que imparten','SELECT p.nombre, apellidos, COUNT(modulos_idModulo) nAsignaturas
FROM profesores p
LEFT JOIN modulos ON (Profesores_idProfesor = idProfesor)
LEFT JOIN modulos_has_TramosHorarios ON (idModulo = modulos_idModulo)
GROUP BY idProfesor','SELECT p.nombre, apellidos, COUNT(idModulo) nAsignaturas
FROM profesores p
LEFT JOIN modulos ON (Profesores_idProfesor = idProfesor)
GROUP BY idProfesor');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('¿Cuantas asignaturas hay en cada curso?','SELECT nombre modulos,  COUNT(modulos_idModulo) asignaturas
FROM  modulos_has_TramosHorarios JOIN  modulos ON (modulos_idModulo = idModulo)
GROUP BY modulos_idModulo ','SELECT idGrupo,  COUNT(idModulo) asignaturas
FROM  modulos 
GROUP BY idGrupo');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('¿Cuántos profesores dan clase en cada grupo?','SELECT idGrupo, COUNT(distinct Profesores_idProfesor) FROM modulos GROUP BY idGrupo','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('¿Cuantas horas de clase tiene cada profesor a la semana?','SELECT COUNT(idTramo), Iniciales FROM profesores JOIN modulos ON (Profesores_idProfesor = idProfesor) JOIN modulos_has_TramosHorarios ON (modulos_idModulo = idModulo) JOIN TramosHorarios ON (idTramo = TramosHorarios_idTramo) GROUP BY idProfesor','SELECT COUNT(idTramo), Iniciales
FROM profesores
JOIN modulos ON (Profesores_idProfesor = idProfesor)
JOIN modulos_has_TramosHorarios ON (modulos_idModulo = idModulo)
JOIN TramosHorarios ON (idTramo = TramosHorarios_idTramo)
GROUP BY idProfesorSELECT COUNT(idModulohasTramo) horas, CONCAT(p.nombre, ' ',p.apellidos)
FROM  profesores p 
JOIN  modulos m ON (p.idProfesor = m.Profesores_idProfesor)
JOIN modulos_has_TramosHorarios mht ON(m.idModulo = mht.modulos_idModulo) 
GROUP BY idProfesor');
