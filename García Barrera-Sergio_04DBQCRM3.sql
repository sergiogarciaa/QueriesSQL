CREATE TABLE Sheet1(QUESTIONS VARCHAR(10),RESPONSES VARCHAR(10),Column_3 VARCHAR(10));
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('CRM database','Para conectar rápido, http://sql.ldtsynergy.com','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('Número de suspensos en cada evaluación','SELECT eva_idEvaluacion, COUNT(idNota)NA
FROM notas
WHERE Nota < 5
GROUP BY eva_idEvaluacion','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('Número total de suspensos por alumno en la 5a Evaluación','SELECT  CONCAT(Nombre, ' ' ,Apellidos) Nombre, COUNT(idNota) nta
FROM notas JOIN alumnos ON (alm_idAlumno = idAlumno)
WHERE nota < 5 AND eva_idEvaluacion=5
GROUP BY idAlumno','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('Listado de alumnos que tienen más de 5 suspensos en la 5a evaluación','SELECT *
FROM
(SELECT  CONCAT(Nombre, ' ' ,Apellidos) Nombre, COUNT(idNota) nta
FROM notas JOIN alumnos ON (alm_idAlumno = idAlumno)
WHERE nota < 5 AND eva_idEvaluacion=5
GROUP BY idAlumno)TABLA1
WHERE nta > 5','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('Número de suspensos por módulo, ordenado de más a menos suspensos','SELECT Alias, COUNT(idNota) NumS
FROM notas JOIN modulos ON (mod_idModulo = idModulo)
WHERE Nota < 5
GROUP BY idModulo
ORDER BY NumS DESC','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('Nota en cada evaluación en promedio','SELECT eva_idEvaluacion, ROUND(AVG(idNota),2) NumS
FROM notas
GROUP BY eva_idEvaluacion','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('Número de suspensos que tiene cada módulo en cada evaluación','SELECT idGrupo, Alias, eva_idEvaluacion, COUNT(idNota) NumS
FROM notas JOIN modulos ON(mod_idModulo = idModulo)
WHERE Nota < 5
GROUP BY eva_idEvaluacion','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('CRM database','Para conectar rápido, http://sql.ldtsynergy.com','');
