CREATE TABLE Sheet1(Column_1 VARCHAR(10),Column_2 VARCHAR(10),Column_3 VARCHAR(10));
INSERT INTO Sheet1 (Column_1,Column_2,Column_3) VALUES ('QUESTIONS','RESPONSES: La queries tienen que ser válidas siempre -independientemente del año en el que estés. Para eso partimos siempre de funciones como curdate() y nunca usamos fechas literales, fijas.','');
INSERT INTO Sheet1 (Column_1,Column_2,Column_3) VALUES ('','Para conectar rápido, http://sql.ldtsynergy.com','');
INSERT INTO Sheet1 (Column_1,Column_2,Column_3) VALUES ('Si un alquiler vence dentro de 9 días, ¿en qué fecha vence?','SELECT ADDDATE(CURDATE(), INTERVAL 9 DAY)','');
INSERT INTO Sheet1 (Column_1,Column_2,Column_3) VALUES ('El jueves próximo, ¿en qué cae?','SELECT IF(WEEKDAY(CURDATE()) < 3, DATE_ADD(CURDATE(), INTERVAL 3 - WEEKDAY(CURDATE())DAY), DATE_ADD(CURDATE(), INTERVAL 10 - WEEKDAY(CURDATE()) DAY))','');
INSERT INTO Sheet1 (Column_1,Column_2,Column_3) VALUES ('¿En qué fecha cae el primer fin de semana del mes que viene? -Que todos los días sean de ese mes','SELECT DATE_ADD(CURDATE(), INTERVAL 5 - WEEKDAY(CURDATE()) DAY)','');
INSERT INTO Sheet1 (Column_1,Column_2,Column_3) VALUES ('Si hay reunión los terceros lunes de mes, ¿Cuándo es -o ha sido- la de este mes?','SELECT IF(WEEKDAY(CONCAT(  YEAR(CURDATE()), '-', MONTH(CURDATE()), '-', 1)  ) = 0,
DATE_ADD( CONCAT( YEAR(CURDATE()), '-', MONTH(CURDATE()), '-', 1) , INTERVAL 14 DAY) ,
DATE_ADD( CONCAT( YEAR(CURDATE()), '-', MONTH(CURDATE()), '-', 1)   , INTERVAL 21 - WEEKDAY(CONCAT(YEAR(CURDATE()), '-', MONTH(CURDATE()), '-', 1) ) DAY))','');
INSERT INTO Sheet1 (Column_1,Column_2,Column_3) VALUES ('Repite los anteriores poniendo las fechas en formato español con 2-2-4 dígitos: dd-mm-yyyy','SELECT DATE_FORMAT( IF(WEEKDAY(CONCAT(  YEAR(CURDATE()), '-', MONTH(CURDATE()), '-', 1)  ) = 0,
DATE_ADD( CONCAT( YEAR(CURDATE()), '-', MONTH(CURDATE()), '-', 1) , INTERVAL 14 DAY) ,
DATE_ADD( CONCAT( YEAR(CURDATE()), '-', MONTH(CURDATE()), '-', 1)   , INTERVAL 21 - WEEKDAY(CONCAT(YEAR(CURDATE()), '-', MONTH(CURDATE()), '-', 1) ) DAY)),

 '%d %m %y')','');
INSERT INTO Sheet1 (Column_1,Column_2,Column_3) VALUES ('¿Cuánto tiempo queda hasta que acaben hoy las clases?','SELECT TIMEDIFF(CURRENT_TIME(), '12:45:00')','');
INSERT INTO Sheet1 (Column_1,Column_2,Column_3) VALUES ('AYUDA! Si quieres, mira cómo se usan las funciones en este ejercicio:','https://share.voomly.com/v/ClP2tIE9W','');
INSERT INTO Sheet1 (Column_1,Column_2,Column_3) VALUES ('Si un alquiler vence dentro de 9 días, ¿en qué fecha vence?','SELECT ADDDATE(CURDATE(), INTERVAL 9 DAY)','');
