CREATE TABLE Sheet1(QUESTIONS VARCHAR(10),RESPONSES VARCHAR(10));
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('','Para conectar rápido, http://sql.ldtsynergy.com');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('TEORIA PREVIA','');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Todos los datos de los trabajadores programadores, ordenado descendente por salario','SELECT *
FROM EMPLOYEES
WHERE JOB_ID='IT_PROG'
ORDER BY SALARY DESC');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de trabajadores cuyo COMMISSION_PCT no sea nulo.','SELECT *
FROM EMPLOYEES
WHERE COMMISSION_PCT IS NOT NULL
');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de Paises en los que está presente la empresa','SELECT COUNTRY_NAME FROM COUNTRIES
WHERE COUNTRY_ID IN (SELECT COUNTRY_ID FROM LOCATIONS)');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de correos electrónicos de los empleados que cobran menos de 3000. Ordénalos por su nombre.','SELECT FIRST_NAME, LAST_NAME, EMAIL FROM EMPLOYEES
WHERE SALARY < 3000
ORDER BY FIRST_NAME');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de empleados cuyo nombre empieza por T.','SELECT FIRST_NAME FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'T%'');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de Oficinas (ubicaciones) que actualmente alojan algún departamento                                                                                                                                                        ','SELECT STREET_ADDRESS, POSTAL_CODE, CITY FROM LOCATIONS WHERE LOCATION_ID IN (SELECT LOCATION_ID FROM DEPARTMENTS);');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de Paises en los que NO está presente la empresa
(Se supone que las oficinas están todas registradas con sus direcciones en una tabla)','SELECT COUNTRY_NAME FROM COUNTRIES
WHERE COUNTRY_ID NOT IN (SELECT COUNTRY_ID FROM LOCATIONS)');
