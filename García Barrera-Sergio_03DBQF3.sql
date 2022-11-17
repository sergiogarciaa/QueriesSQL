CREATE TABLE Sheet1(QUESTIONS VARCHAR(10),RESPONSES VARCHAR(10));
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('','Para conectar rápido, http://sql.ldtsynergy.com');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de todos los trabajadores indicando SI o NO, según ganen más de 10000 o menos','SELECT FIRST_NAME, LAST_NAME, SALARY,
IF(SALARY>10000,'Si','No')
FROM EMPLOYEES');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de todas las oficinas indicando USA o ENG u OTROS según en qué pais se encuentre','SELECT POSTAL_CODE, CITY,
CASE COUNTRY_ID
WHEN "US" THEN "USA"
WHEN "UK" THEN "ENG"
ELSE "OTROS" END
FROM LOCATIONS');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de todos los trabajadores indicando el día de la semana que fueron contratados (con su nombre español: lunes, martes...)','SELECT FIRST_NAME, LAST_NAME,
CASE WEEKDAY(HIRE_DATE)
WHEN '0' THEN "Lunes"
WHEN '1' THEN "Martes"
WHEN '2' THEN "Miercoles"
WHEN '3' THEN "Jueves"
WHEN '4' THEN "Viernes"
WHEN '5' THEN "Sabado"
WHEN '6' THEN "Domingo"
END
FROM EMPLOYEES
ORDER BY WEEKDAY(HIRE_DATE)');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de todos los trabajadores indicando la fecha de contratación en formato español: Dia/Mes/Año','SELECT FIRST_NAME, LAST_NAME,
concat(WEEKDAY(HIRE_DATE), "/", MONTH(HIRE_DATE),"/", YEAR(HIRE_DATE)) "Fecha de Contratacion"
FROM EMPLOYEES
ORDER BY YEAR(HIRE_DATE)');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de todos los países con sus oficinas, indicando "SIN OFICINA" en caso de que no la haya','SELECT COUNTRY_NAME, IFNULL(CITY, 'Sin Oficina')
FROM LOCATIONS L RIGHT JOIN COUNTRIES C ON (C.COUNTRY_ID=L.COUNTRY_ID)
');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('QUESTIONS','RESPONSES');
