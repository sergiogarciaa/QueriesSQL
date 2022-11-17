CREATE TABLE Sheet1(QUESTIONS VARCHAR(10),Column_2 VARCHAR(10));
INSERT INTO Sheet1 (QUESTIONS,Column_2) VALUES ('','Para conectar rápido, http://sql.ldtsynergy.com');
INSERT INTO Sheet1 (QUESTIONS,Column_2) VALUES ('Un tal Bruce que es programador y le han bajado el sueldo a 6000. Dame todos sus datos.','SELECT * FROM EMPLOYEES
WHERE EMPLOYEE_ID = 104');
INSERT INTO Sheet1 (QUESTIONS,Column_2) VALUES ('Necesito todos los datos del empleado con el numero de telefono 5.151.244.369','SELECT * FROM EMPLOYEES
WHERE PHONE_NUMBER = '5.151.244.369'');
INSERT INTO Sheet1 (QUESTIONS,Column_2) VALUES ('Listado de empleados que no pertenecen a ningún departamento','SELECT * FROM EMPLOYEES
WHERE DEPARTMENT_ID NOT IN (SELECT DEPARTMENT_ID FROM DEPARTMENTS)');
INSERT INTO Sheet1 (QUESTIONS,Column_2) VALUES ('Dime las direcciones de todas las oficinas que se encuentren en Japon (si existen)','SELECT * FROM LOCATIONS
WHERE COUNTRY_ID IN (SELECT COUNTRY_ID FROM COUNTRIES WHERE COUNTRY_ID = "JP")');
INSERT INTO Sheet1 (QUESTIONS,Column_2) VALUES ('Lista la ciudad y el pais donde se encuentra el departamento IT','SELECT COUNTRY_ID, CITY FROM LOCATIONS
WHERE LOCATION_ID IN (SELECT LOCATION_ID FROM DEPARTMENTS WHERE LOCATION_ID = '1400')');
INSERT INTO Sheet1 (QUESTIONS,Column_2) VALUES ('Todos los datos de los empleados del departamento de ventas ('SALES').','SELECT * FROM EMPLOYEES
WHERE DEPARTMENT_ID IN (SELECT DEPARTMENT_ID FROM DEPARTMENTS WHERE DEPARTMENT_ID = '80')');
INSERT INTO Sheet1 (QUESTIONS,Column_2) VALUES ('Nombre y apellido de un tal Anthony que le han subido el sueldo a 3000.','SELECT * FROM EMPLOYEES
WHERE FIRST_NAME = "Anthony"');
INSERT INTO Sheet1 (QUESTIONS,Column_2) VALUES ('QUESTIONS','');
INSERT INTO Sheet1 (QUESTIONS,Column_2) VALUES ('','Para conectar rápido, http://sql.ldtsynergy.com');
INSERT INTO Sheet1 (QUESTIONS,Column_2) VALUES ('Un tal Bruce que es programador y le han bajado el sueldo a 6000. Dame todos sus datos.','SELECT * FROM EMPLOYEES
WHERE EMPLOYEE_ID = 104');
INSERT INTO Sheet1 (QUESTIONS,Column_2) VALUES ('Necesito todos los datos del empleado con el numero de telefono 5.151.244.369','SELECT * FROM EMPLOYEES
WHERE PHONE_NUMBER = '5.151.244.369'');
INSERT INTO Sheet1 (QUESTIONS,Column_2) VALUES ('Listado de empleados que no pertenecen a ningún departamento','SELECT * FROM EMPLOYEES
WHERE DEPARTMENT_ID NOT IN (SELECT DEPARTMENT_ID FROM DEPARTMENTS)');
INSERT INTO Sheet1 (QUESTIONS,Column_2) VALUES ('Dime las direcciones de todas las oficinas que se encuentren en Japon (si existen)','SELECT * FROM LOCATIONS
WHERE COUNTRY_ID IN (SELECT COUNTRY_ID FROM COUNTRIES WHERE COUNTRY_ID = "JP")');
INSERT INTO Sheet1 (QUESTIONS,Column_2) VALUES ('Lista la ciudad y el pais donde se encuentra el departamento IT','SELECT COUNTRY_ID, CITY FROM LOCATIONS
WHERE LOCATION_ID IN (SELECT LOCATION_ID FROM DEPARTMENTS WHERE LOCATION_ID = '1400')');
INSERT INTO Sheet1 (QUESTIONS,Column_2) VALUES ('Todos los datos de los empleados del departamento de ventas ('SALES').','SELECT * FROM EMPLOYEES
WHERE DEPARTMENT_ID IN (SELECT DEPARTMENT_ID FROM DEPARTMENTS WHERE DEPARTMENT_ID = '80')');
