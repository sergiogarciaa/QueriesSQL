CREATE TABLE Sheet1(QUESTIONS VARCHAR(10),RESPONSES VARCHAR(10),Column_3 VARCHAR(10));
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('CRM','Para conectar rápido, http://sql.ldtsynergy.com','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('En un análisis de rendimiento que se está haciendo, se define el término "DEBACLE" como el hecho en el que 1 alumno obtiene más de 8 suspensos en una evaluación.
Se quiere un listado de todas las debacles ocurridas, indicando quien y en qué evaluación','SELECT *
FROM
(SELECT eva_idEvaluacion, COUNT(idNota) NUMSP, Nombre, Apellidos
FROM notas
JOIN alumnos a ON (alm_idAlumno=a.idAlumno)
WHERE Nota < 5
GROUP BY idAlumno, eva_idEvaluacion)TABLA1
WHERE NUMSP > 8','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('¿Hay asignaturas en las que hayan suspendido más de 15 alumnos en la 5a evaluación?','SELECT *
FROM
(SELECT  Alias, COUNT(idNota) NUMSP
FROM notas JOIN modulos ON (mod_idModulo = idModulo)
WHERE  Nota<5 AND eva_idEvaluacion=5
GROUP BY idModulo) TABLA1
WHERE  NUMSP > 15','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('¿Hay algún profesor que haya otorgado más de 15 sobresalientes en la 5a evaluación? (SB >= 9)','SELECT *
FROM
(
SELECT count(idNota) NumSB, concat(p.nombre, ' ', apellidos) "Nombre y Apellidos"
FROM notas JOIN modulos ON (mod_idModulo = idModulo) JOIN profesores p ON (Profesores_idProfesor = idProfesor) 
WHERE Nota>=9 AND eva_idEvaluacion = 5
GROUP BY idProfesor
) TABLA1
WHERE NumSB > 15','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('CRM','Para conectar rápido, http://sql.ldtsynergy.com','');
