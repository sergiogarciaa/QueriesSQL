CREATE TABLE Sheet1(Z VARCHAR(10),RESPONSES VARCHAR(10),Column_3 VARCHAR(10));
INSERT INTO Sheet1 (Z,RESPONSES,Column_3) VALUES ('CRM','Para conectar rápido, http://sql.ldtsynergy.com','');
INSERT INTO Sheet1 (Z,RESPONSES,Column_3) VALUES ('Se desea un Informe donde aparezcan todos los días de la semana y el número de faltas de asistencia A, ordenado de más a menos','SELECT *
FROM
(
SELECT weekday(fechaincidencia)+1, COUNT(idTIposincidencia) faltas
FROM incidencias JOIN tiposincidencia ON(TiposIncidencia_idTiposIncidencia = idTiposIncidencia)
WHERE idTiposIncidencia LIKE '%A'
GROUP BY weekday(fechaincidencia)
)TABLA1
ORDER BY faltas DESC','SELECT weekday(fechaincidencia)+1, COUNT(idIncidencia) faltas
FROM incidencias
WHERE TiposIncidencia_idTiposIncidencia LIKE 'A'
GROUP BY weekday(fechaincidencia)
ORDER BY faltas DESC');
INSERT INTO Sheet1 (Z,RESPONSES,Column_3) VALUES ('Se desea un informe con el número de los días en los que hayan registradas más de 150 faltas de asistencia a clase A','SELECT *
FROM
(
SELECT fechaincidencia, COUNT(idTIposincidencia) faltas
FROM incidencias JOIN tiposincidencia ON(TiposIncidencia_idTiposIncidencia = idTiposIncidencia)
WHERE idTiposIncidencia LIKE '%A'
GROUP BY fechaincidencia
)TABLA1
WHERE faltas > 150
ORDER BY faltas DESC','SELECT *
FROM
(
SELECT fechaincidencia, COUNT(idIncidencia) faltas
FROM incidencias
WHERE TiposIncidencia_idTiposIncidencia = 'A'
GROUP BY fechaincidencia
)TABLA1
WHERE faltas > 150
ORDER BY faltas DESC');
INSERT INTO Sheet1 (Z,RESPONSES,Column_3) VALUES ('Haz el listado anterior mostrando el número de faltas por grupo en esos días','SELECT *
FROM
(
SELECT fechaincidencia, COUNT(idIncidencia) faltas, idGrupo
FROM incidencias JOIN tiposincidencia ON(TiposIncidencia_idTiposIncidencia = idTiposIncidencia) JOIN modulos ON (Modulos_idModulo = idModulo)
WHERE idTiposIncidencia LIKE '%A'
GROUP BY fechaincidencia
)TABLA1','');
INSERT INTO Sheet1 (Z,RESPONSES,Column_3) VALUES ('Listado de cuántas faltas de asistencia a clase A hay registradas con cada profesor.','SELECT p.nombre, apellidos ,COUNT(idTiposIncidencia) faltas
FROM incidencias JOIN tiposincidencia ON (TiposIncidencia_idTiposIncidencia = idTiposIncidencia) JOIN modulos ON(Modulos_idModulo = idModulo) JOIN profesores p ON (Profesores_idProfesor = idProfesor)
WHERE idTiposIncidencia LIKE '%A'
GROUP BY idProfesor','');
INSERT INTO Sheet1 (Z,RESPONSES,Column_3) VALUES ('Haz el listado anterior haciendo el promedio de faltas de asistencia A por cada hora de clase para cada profesor','SELECT n, a, h, AVG(faltas)
FROM
(
SELECT p.nombre n, apellidos a ,COUNT(idTiposIncidencia) faltas, horaclase h
FROM incidencias 
JOIN tiposincidencia ON (TiposIncidencia_idTiposIncidencia = idTiposIncidencia) 
JOIN modulos ON(Modulos_idModulo = idModulo) 
JOIN profesores p ON (Profesores_idProfesor = idProfesor)
WHERE idTiposIncidencia LIKE '%A'
GROUP BY idProfesor, horaclase
)TABLA1
GROUP BY faltas','');
INSERT INTO Sheet1 (Z,RESPONSES,Column_3) VALUES ('Listado con los 3 meses del curso en los que más faltas de asistencia se produzcan','SELECT *
FROM
(
SELECT MONTH(fechaincidencia) meses, COUNT(idTiposIncidencia) faltas
FROM incidencias
JOIN tiposincidencia ON (TiposIncidencia_idTiposIncidencia = idTiposIncidencia)
WHERE  idTiposIncidencia LIKE '%A'
GROUP BY idTiposIncidencia, fechaincidencia
)TABLA1
ORDER BY faltas DESC
LIMIT 3','');
INSERT INTO Sheet1 (Z,RESPONSES,Column_3) VALUES ('Listado de todos los meses en los que hay clases y el número de faltas C registradas','SELECT MONTH(fechaincidencia) meses,
COUNT(idTiposIncidencia) C
FROM incidencias
JOIN tiposincidencia ON (TiposIncidencia_idTiposIncidencia = idTiposIncidencia)
WHERE idTiposIncidencia LIKE '%C'
GROUP BY meses','');
INSERT INTO Sheet1 (Z,RESPONSES,Column_3) VALUES ('Se desea un informe con el número de los días en los que hayan registradas más de 150 faltas de asistencia a clase A','SELECT *
FROM
(
SELECT fechaincidencia, COUNT(idTIposincidencia) faltas
FROM incidencias JOIN tiposincidencia ON(TiposIncidencia_idTiposIncidencia = idTiposIncidencia)
WHERE idTiposIncidencia LIKE '%A'
GROUP BY fechaincidencia
)TABLA1
WHERE faltas > 150
ORDER BY faltas DESC','SELECT *
FROM
(
SELECT fechaincidencia, COUNT(idIncidencia) faltas
FROM incidencias
WHERE TiposIncidencia_idTiposIncidencia = 'A'
GROUP BY fechaincidencia
)TABLA1
WHERE faltas > 150
ORDER BY faltas DESC');
INSERT INTO Sheet1 (Z,RESPONSES,Column_3) VALUES ('Haz el listado anterior mostrando el número de faltas por grupo en esos días','SELECT *
FROM
(
SELECT fechaincidencia, COUNT(idIncidencia) faltas, idGrupo
FROM incidencias JOIN tiposincidencia ON(TiposIncidencia_idTiposIncidencia = idTiposIncidencia) JOIN modulos ON (Modulos_idModulo = idModulo)
WHERE idTiposIncidencia LIKE '%A'
GROUP BY fechaincidencia
)TABLA1','');
INSERT INTO Sheet1 (Z,RESPONSES,Column_3) VALUES ('Listado de cuántas faltas de asistencia a clase A hay registradas con cada profesor.','SELECT p.nombre, apellidos ,COUNT(idTiposIncidencia) faltas
FROM incidencias JOIN tiposincidencia ON (TiposIncidencia_idTiposIncidencia = idTiposIncidencia) JOIN modulos ON(Modulos_idModulo = idModulo) JOIN profesores p ON (Profesores_idProfesor = idProfesor)
WHERE idTiposIncidencia LIKE '%A'
GROUP BY idProfesor','');
INSERT INTO Sheet1 (Z,RESPONSES,Column_3) VALUES ('Haz el listado anterior haciendo el promedio de faltas de asistencia A por cada hora de clase para cada profesor','SELECT n, a, h, AVG(faltas)
FROM
(
SELECT p.nombre n, apellidos a ,COUNT(idTiposIncidencia) faltas, horaclase h
FROM incidencias 
JOIN tiposincidencia ON (TiposIncidencia_idTiposIncidencia = idTiposIncidencia) 
JOIN modulos ON(Modulos_idModulo = idModulo) 
JOIN profesores p ON (Profesores_idProfesor = idProfesor)
WHERE idTiposIncidencia LIKE '%A'
GROUP BY idProfesor, horaclase
)TABLA1
GROUP BY faltas','');
INSERT INTO Sheet1 (Z,RESPONSES,Column_3) VALUES ('Listado con los 3 meses del curso en los que más faltas de asistencia se produzcan','SELECT *
FROM
(
SELECT MONTH(fechaincidencia) meses, COUNT(idTiposIncidencia) faltas
FROM incidencias
JOIN tiposincidencia ON (TiposIncidencia_idTiposIncidencia = idTiposIncidencia)
WHERE  idTiposIncidencia LIKE '%A'
GROUP BY idTiposIncidencia, fechaincidencia
)TABLA1
ORDER BY faltas DESC
LIMIT 3','');
INSERT INTO Sheet1 (Z,RESPONSES,Column_3) VALUES ('Listado de todos los meses en los que hay clases y el número de faltas C registradas','SELECT MONTH(fechaincidencia) meses,
COUNT(idTiposIncidencia) C
FROM incidencias
JOIN tiposincidencia ON (TiposIncidencia_idTiposIncidencia = idTiposIncidencia)
WHERE idTiposIncidencia LIKE '%C'
GROUP BY meses','');
