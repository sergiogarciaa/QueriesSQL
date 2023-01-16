CREATE TABLE Sheet1(QUESTIONS VARCHAR(10),RESPONSES VARCHAR(10),Column_3 VARCHAR(10),Column_4 VARCHAR(10));
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3,Column_4) VALUES ('CRM','Para conectar rápido, http://sql.ldtsynergy.com','','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3,Column_4) VALUES ('Nota promedio por asignatura y evaluación','SELECT Alias, idGrupo, eva_idEvaluacion, ROUND(AVG(Nota),2)
FROM notas JOIN modulos ON (mod_idModulo = idModulo)
GROUP BY idModulo, eva_idEvaluacion','','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3,Column_4) VALUES ('Número de suspensos por curso y evaluación','SELECT idGrupo, COUNT(idNota) NumS, eva_idEvaluacion
FROM notas JOIN modulos ON (mod_idModulo = idModulo)
WHERE Nota < 5
GROUP BY idModulo, eva_idEvaluacion','','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3,Column_4) VALUES ('Listado de los 3 módulos más duros: en los que más gente han suspendido (sugerencia: LIMIT)','SELECT Alias, idGrupo, COUNT(idNota) NumS
FROM notas JOIN modulos ON (mod_idModulo = idModulo)
WHERE Nota < 5
GROUP BY idModulo
ORDER BY NumS DESC LIMIT 3','','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3,Column_4) VALUES ('Listado de los 10 alumnos de 2º con mejor expediente en la 5a Evaluación','SELECT idGrupo, nombre, apellidos, round(avg(Nota),2) expedientes 
FROM alumnos JOIN notas ON (alm_idAlumno = idAlumno) 
WHERE idGrupo like '%2' AND eva_idEvaluacion=5 
GROUP BY idAlumno 
ORDER BY expedientes DESC LIMIT 10','','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3,Column_4) VALUES ('Se definen los tramos de notas por la parte entera (ej: tramo 5: de 5.00 a 5.99). Se desea un listado en el que aparezcan para cada tramo cuántos alumnos tienen su nota media en ese tramo. Haz para que aparezcan ordenados por tramos de 1 a 10, y de cada tramo el dato de la 1a evaluación y debajo el de la 5a evaluación','SELECT eva_idEvaluacion, TRAMO, count(idAlumno)
FROM
(
SELECT idAlumno, eva_idEvaluacion , FLOOR(avg(Nota)) TRAMO
FROM alumnos JOIN notas ON (alm_idAlumno = idAlumno) 
WHERE eva_idEvaluacion in (1,5) 
GROUP BY idAlumno, eva_idEvaluacion
)TABLA1
GROUP BY eva_idEvaluacion, TRAMO
','','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3,Column_4) VALUES ('QUESTIONS','RESPONSES','','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3,Column_4) VALUES ('CRM','Para conectar rápido, http://sql.ldtsynergy.com','','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3,Column_4) VALUES ('Nota promedio por asignatura y evaluación','SELECT Alias, idGrupo, eva_idEvaluacion, ROUND(AVG(Nota),2)
FROM notas JOIN modulos ON (mod_idModulo = idModulo)
GROUP BY idModulo, eva_idEvaluacion','','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3,Column_4) VALUES ('Número de suspensos por curso y evaluación','SELECT idGrupo, COUNT(idNota) NumS, eva_idEvaluacion
FROM notas JOIN modulos ON (mod_idModulo = idModulo)
WHERE Nota < 5
GROUP BY idModulo, eva_idEvaluacion','','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3,Column_4) VALUES ('Listado de los 3 módulos más duros: en los que más gente han suspendido (sugerencia: LIMIT)','SELECT Alias, idGrupo, COUNT(idNota) NumS
FROM notas JOIN modulos ON (mod_idModulo = idModulo)
WHERE Nota < 5
GROUP BY idModulo
ORDER BY NumS DESC LIMIT 3','','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3,Column_4) VALUES ('Listado de los 10 alumnos de 2º con mejor expediente en la 5a Evaluación','SELECT idGrupo, nombre, apellidos, round(avg(Nota),2) expedientes 
FROM alumnos JOIN notas ON (alm_idAlumno = idAlumno) 
WHERE idGrupo like '%2' AND eva_idEvaluacion=5 
GROUP BY idAlumno 
ORDER BY expedientes DESC LIMIT 10','','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3,Column_4) VALUES ('Se definen los tramos de notas por la parte entera (ej: tramo 5: de 5.00 a 5.99). Se desea un listado en el que aparezcan para cada tramo cuántos alumnos tienen su nota media en ese tramo. Haz para que aparezcan ordenados por tramos de 1 a 10, y de cada tramo el dato de la 1a evaluación y debajo el de la 5a evaluación','SELECT eva_idEvaluacion, TRAMO, count(idAlumno)
FROM
(
SELECT idAlumno, eva_idEvaluacion , FLOOR(avg(Nota)) TRAMO
FROM alumnos JOIN notas ON (alm_idAlumno = idAlumno) 
WHERE eva_idEvaluacion in (1,5) 
GROUP BY idAlumno, eva_idEvaluacion
)TABLA1
GROUP BY eva_idEvaluacion, TRAMO
','','');
