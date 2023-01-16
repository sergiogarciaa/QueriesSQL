CREATE TABLE Sheet1(QUESTIONS VARCHAR(10),RESPONSES VARCHAR(10),Column_3 VARCHAR(10));
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('CRM Database','Para conectar rápido, http://sql.ldtsynergy.com','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('¿Cuántas incidencias tiene cada alumno?','SELECT Nombre, Apellidos, COUNT(idIncidencia)
FROM incidencias i 
JOIN alumnos a ON (i.idAlumno = a.idAlumno)
GROUP BY a.idAlumno','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('¿Cuántas faltas de asistencia -incidencias 'A'- tiene cada alumno?','SELECT  CONCAT(a.Nombre ,' ',a.Apellidos), COUNT(i.TiposIncidencia_idTiposIncidencia)
FROM  alumnos a JOIN  incidencias i ON ( i.idAlumno = a.idAlumno )
WHERE TiposIncidencia_idTiposIncidencia LIKE 'A%'
GROUP BY a.idAlumno','SELECT Nombre, Apellidos, COUNT(idIncidencia)
FROM incidencias i 
JOIN alumnos a ON (i.idAlumno = a.idAlumno)
WHERE TiposIncidencia_idTiposIncidencia = 'A'
GROUP BY a.idAlumno');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('Listado de alumnos que tengan más de 60 faltas de asistencia','SELECT *
FROM 
(
SELECT  Nombre, Apellidos, COUNT(idIncidencia) Faltas
FROM  alumnos a JOIN incidencias i ON (i.idAlumno = a.idAlumno)
WHERE TiposIncidencia_idTiposIncidencia='A'
GROUP BY  a.idAlumno
)
TABLA1
WHERE Faltas > 60','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('Listado de todos los grupos con el número de faltas de comportamiento -incidencias tipo C- que hay en cada uno','SELECT  g.idGrupo, COUNT(idIncidencia)
FROM  grupos g LEFT JOIN alumnos a ON (a.idGrupo= g.idGrupo) LEFT JOIN  incidencias i ON(i.idAlumno=a.idAlumno)
WHERE TiposIncidencia_idTiposIncidencia='C'
GROUP BY g.idGrupo','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('QUESTIONS','RESPONSES','');
