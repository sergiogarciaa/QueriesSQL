CREATE TABLE Sheet1(QUESTIONS VARCHAR(10),RESPONSES VARCHAR(10),Column_3 VARCHAR(10));
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('','Para conectar rápido, http://sql.ldtsynergy.com','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('Listado de todos los paises y los trabajadores que se encuentran en ellos','SELECT COUNTRY_NAME, FIRST_NAME, LAST_NAME FROM COUNTRIES C JOIN LOCATIONS L ON (L.COUNTRY_ID=C.COUNTRY_ID)
JOIN DEPARTMENTS D ON (D.LOCATION_ID=L.LOCATION_ID) JOIN EMPLOYEES E ON (D.DEPARTMENT_ID=E.DEPARTMENT_ID)
ORDER BY FIRST_NAME, LAST_NAME','OUTER');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('Listado de los paises en los que no se encuentra ningún departamento (Sin usar IN)','SELECT COUNTRY_NAME, DEPARTMENT_NAME FROM COUNTRIES C JOIN LOCATIONS L ON (L.COUNTRY_ID=C.COUNTRY_ID)
LEFT JOIN DEPARTMENTS D ON (D.LOCATION_ID=L.LOCATION_ID) WHERE DEPARTMENT_NAME IS NULL','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('Listado de los paises en los que no se encuentra ningún departamento (Sin usar JOIN)','SELECT COUNTRY_NAME FROM COUNTRIES WHERE COUNTRY_ID IN (SELECT COUNTRY_ID FROM LOCATIONS WHERE LOCATION_ID IN (SELECT LOCATION_ID FROM DEPARTMENTS WHERE DEPARTMENT_NAME IS NULL))','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('Listado de los empleados cuyo apellidos empieza por M','SELECT FIRST_NAME, LAST_NAME 
FROM EMPLOYEES 
WHERE LAST_NAME LIKE  'M%'','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('Listado de los registros de estudio que fueron viernes. Decir nombre, apellidos y fecha en formato americano','','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('Fecha del lunes pasado','','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES,Column_3) VALUES ('Plantilla para ejercicios con date_add','https://docs.google.com/spreadsheets/d/1TMhcLXpJClyDmtWC0e0ORS5Rd36eX3nB87HPB-kIHvg','');
