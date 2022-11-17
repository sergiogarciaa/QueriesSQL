CREATE TABLE Sheet1(QUESTIONS VARCHAR(10),RESPONSES VARCHAR(10));
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('','Para conectar rápido, http://sql.ldtsynergy.com');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Si las clases acaban el 18 de Mayo próximo, ¿cuántos días quedan para que acaben las clases?','SELECT CURDATE(), IF(CONCAT(YEAR(ADDDATE(CURDATE(),INTERVAL 1 YEAR)),'-',5,'-',18)<CURDATE(),'VERDADERO',CONCAT('2023-5-18',' ', '/', ' ', DATEDIFF(CONCAT(YEAR(ADDDATE(CURDATE(),INTERVAL 1 YEAR)), '-', 5, '-',18),CURDATE()), ' ', 'DIAS')) "Fin de clases"');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Si hoy compro una cosa y tengo que pagarla en 60 días, ¿cuál es la fecha límite para pagar?','SELECT CURDATE() COMPRA, ADDDATE(CURDATE(), INTERVAL 60 DAY) "LIMITE DE PAGO"');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('¿Qué mes será -número- dentro de 7 semanas?','SELECT MONTH(ADDDATE(CURDATE(), INTERVAL 7 WEEK)) "Dentro de 7 semanas sera Mes"');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('¿Qué día de la semana será el 25 de marzo próximo?','SELECT if(CONCAT(YEAR(ADDDATE(CURDATE(), INTERVAL 1 YEAR)), '-', 3, '-', 25) < CURDATE(), 'VERDADERO',
WEEKDAY(CONCAT(YEAR(ADDDATE(CURDATE() , INTERVAL 1 YEAR)),  '-', 3, '-', 25))) "DIA 25 MARZO"');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('¿Qué fecha es el próximo lunes?','SELECT DATE_ADD(CURDATE(), INTERVAL 7 - WEEKDAY(CURDATE()) DAY) "Proximo Lunes"');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('¿Qué día de la semana será el último día del mes?','SELECT WEEKDAY(LAST_DAY(CURDATE()))');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Listado de los trabajadores que cumplen años en la empresa durante el mes actual, indicando el día y el número de años.','SELECT FIRST_NAME, LAST_NAME, CONCAT(DAY(HIRE_DATE),'-', MONTH(HIRE_DATE),'-',YEAR(HIRE_DATE)) " Fecha inicio", DAY(HIRE_DATE) "Dia", YEAR(CURDATE()) - YEAR(HIRE_DATE) "Numero de anios en la empresa"
FROM EMPLOYEES
WHERE MONTH(HIRE_DATE) = MONTH(CURDATE())');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('AYUDA! Si quieres, mira cómo se usan las funciones en este ejercicio:','https://share.voomly.com/v/au4jixpNN');
INSERT INTO Sheet1 (QUESTIONS,RESPONSES) VALUES ('Plantilla para ejercicios con date_add','https://docs.google.com/spreadsheets/d/1TMhcLXpJClyDmtWC0e0ORS5Rd36eX3nB87HPB-kIHvg');
