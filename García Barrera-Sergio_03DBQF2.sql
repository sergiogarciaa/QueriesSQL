CREATE TABLE Sheet1(QUESTIONS VARCHAR(10),RESPONSES VARCHAR(10));
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('BASE DE DATOS   HR','Para conectar rápido, http://sql.ldtsynergy.com');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de las 2 Iniciales de los empleados','SELECT LEFT(FIRST_NAME, 1), LEFT(LAST_NAME, 1) FROM EMPLOYEES');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de todos los empleados con el nombre precedido por las tres primeras letras del nombre de departamento','SELECT FIRST_NAME, LAST_NAME, LEFT(DEPARTMENT_NAME,3)  FROM EMPLOYEES  E LEFT JOIN DEPARTMENTS D ON (E.DEPARTMENT_ID=D.DEPARTMENT_ID)');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de todos los empleados indicando el mes en el que fueron contratados (hired)','SELECT FIRST_NAME, LAST_NAME, MONTH(HIRE_DATE) FROM EMPLOYEES');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de todos los empleados indicando el día de la semana en el que fueron contratados','SELECT FIRST_NAME, LAST_NAME, WEEKDAY(HIRE_DATE) FROM EMPLOYEES');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de todos los empleados indicando en número de días que llevan trabajando en la empresa (hasta hoy)','SELECT FIRST_NAME, LAST_NAME,  TO_DAYS(HIRE_DATE) FROM EMPLOYEES');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de todos los empleados con su correo electrónico (dirección completa) sabiendo que el dominio de la empresa es hr.net.
Por favor, no me pongas las direcciones con mayúsculas!!!','SELECT concat(lower(EMAIL), "@hr.net") FROM EMPLOYEES');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listados de todos los empleados indicando fecha del próximo aniversario en la empresa.','SELECT FIRST_NAME, LAST_NAME, HIRE_DATE,

IF(curdate() > concat(YEAR(CURDATE()), "-", MONTH(HIRE_DATE), "-", DAY(HIRE_DATE)), concat(YEAR(CURDATE()) + 1, "-", MONTH(HIRE_DATE), "-", DAY(HIRE_DATE)), concat(YEAR(CURDATE()), "-", MONTH(HIRE_DATE), "-", DAY(HIRE_DATE))) "Proximo aniversario"

FROM EMPLOYEES
ORDER BY MONTH(HIRE_DATE)');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Sobre el ejercicio de HTML de F1, te puede interesar el siguiente ejemplo:','https://share.voomly.com/v/9OAqkz48C');
