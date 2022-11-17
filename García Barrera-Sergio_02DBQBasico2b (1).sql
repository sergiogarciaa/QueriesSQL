CREATE TABLE Sheet1(Column_1 VARCHAR(10),Column_2 VARCHAR(10));
INSERT INTO Sheet1 (Column_1,Column_2) VALUES ('QUESTIONS','DE LAS SIGUIENTES QUERIES HAZ SOLAMENTE LAS QUE SE PUEDAN HACER USANDO JOIN. 
EN AQUELLAS EN LAS QUE JOIN NO TENGA SENTIDO SIMPLEMENTE PON "NO JOIN"');
INSERT INTO Sheet1 (Column_1,Column_2) VALUES ('','Para conectar rápido, http://sql.ldtsynergy.com');
INSERT INTO Sheet1 (Column_1,Column_2) VALUES ('Un tal Bruce que es programador y le han bajado el sueldo a 6000. Dame todos sus datos.','No JOIN');
INSERT INTO Sheet1 (Column_1,Column_2) VALUES ('Necesito todos los datos del empleado con el numero de telefono 5.151.244.369','No JOIN');
INSERT INTO Sheet1 (Column_1,Column_2) VALUES ('Listado de empleados que no pertenecen a ningún departamento','No JOIN');
INSERT INTO Sheet1 (Column_1,Column_2) VALUES ('Dime las direcciones de todas las oficinas que se encuentren en Japon (si existen)','SELECT STREET_ADDRESS FROM LOCATIONS L LEFT JOIN COUNTRIES C ON (L.COUNTRY_ID=C.COUNTRY_ID) WHERE COUNTRY_NAME ='JAPAN';');
INSERT INTO Sheet1 (Column_1,Column_2) VALUES ('Lista la ciudad y el pais donde se encuentra el departamento IT','SELECT DISTINCT CITY, COUNTRY_ID FROM LOCATIONS L LEFT JOIN DEPARTMENTS D ON (L.LOCATION_ID= D.LOCATION_ID) WHERE DEPARTMENT_NAME LIKE '%IT%';');
INSERT INTO Sheet1 (Column_1,Column_2) VALUES ('Todos los datos de los empleados del departamento de ventas ('SALES').','No JOIN');
INSERT INTO Sheet1 (Column_1,Column_2) VALUES ('Nombre y apellido de un tal Anthony que le han subido el sueldo a 3000.','No JOIN');
INSERT INTO Sheet1 (Column_1,Column_2) VALUES ('QUESTIONS','DE LAS SIGUIENTES QUERIES HAZ SOLAMENTE LAS QUE SE PUEDAN HACER USANDO JOIN. 
EN AQUELLAS EN LAS QUE JOIN NO TENGA SENTIDO SIMPLEMENTE PON "NO JOIN"');
INSERT INTO Sheet1 (Column_1,Column_2) VALUES ('','Para conectar rápido, http://sql.ldtsynergy.com');
INSERT INTO Sheet1 (Column_1,Column_2) VALUES ('Un tal Bruce que es programador y le han bajado el sueldo a 6000. Dame todos sus datos.','No JOIN');
INSERT INTO Sheet1 (Column_1,Column_2) VALUES ('Necesito todos los datos del empleado con el numero de telefono 5.151.244.369','No JOIN');
INSERT INTO Sheet1 (Column_1,Column_2) VALUES ('Listado de empleados que no pertenecen a ningún departamento','No JOIN');
INSERT INTO Sheet1 (Column_1,Column_2) VALUES ('Dime las direcciones de todas las oficinas que se encuentren en Japon (si existen)','SELECT STREET_ADDRESS FROM LOCATIONS L LEFT JOIN COUNTRIES C ON (L.COUNTRY_ID=C.COUNTRY_ID) WHERE COUNTRY_NAME ='JAPAN';');
INSERT INTO Sheet1 (Column_1,Column_2) VALUES ('Lista la ciudad y el pais donde se encuentra el departamento IT','SELECT DISTINCT CITY, COUNTRY_ID FROM LOCATIONS L LEFT JOIN DEPARTMENTS D ON (L.LOCATION_ID= D.LOCATION_ID) WHERE DEPARTMENT_NAME LIKE '%IT%';');
INSERT INTO Sheet1 (Column_1,Column_2) VALUES ('Todos los datos de los empleados del departamento de ventas ('SALES').','No JOIN');
