/*************************Create new database************************/

/* Delete shirts_db database if already exists */
 DROP DATABASE IF EXISTS shirts_db;
 
/*Create a new database called shirts database */
CREATE DATABASE shirts_db;

/*select shirts_db as default database*/
USE shirts_db;

/*****************Create new table and insert values******************/

/* Delete shirts table if already exists */
DROP TABLE IF EXISTS Shirts;

/* Create a new table called Shirts*/
CREATE TABLE Shirts 
(
    Shirt_Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Article VARCHAR(50) NOT NULL,
    Color CHAR(15) NOT NULL,
    Shirt_Size CHAR(10) NOT NULL,
    Last_Worn VARCHAR(15) NOT NULL
);

/*************** Insert data into Shirts table********/
INSERT INTO Shirts(Article, Color, Shirt_Size, Last_Worn)
VALUES('t-shirt', 'white', 'S', '10');
INSERT INTO Shirts(Article, Color, Shirt_Size, Last_Worn)
VALUES('t-shirt', 'green', 'S', '200');
INSERT INTO Shirts(Article, Color, Shirt_Size, Last_Worn)
VALUES('polo shirt', 'black', 'M', '10');
INSERT INTO Shirts(Article, Color, Shirt_Size, Last_Worn)
VALUES('tank top', 'blue', 'S', '50');
INSERT INTO Shirts(Article, Color, Shirt_Size, Last_Worn)
VALUES('t-shirt', 'pink', 'S', '0');
INSERT INTO Shirts(Article, Color, Shirt_Size, Last_Worn)
VALUES('polo shirt', 'red', 'M', '5');
INSERT INTO Shirts(Article, Color, Shirt_Size, Last_Worn)
VALUES('tank top', 'white', 'S', '200');
INSERT INTO Shirts(Article, Color, Shirt_Size, Last_Worn)
VALUES('tank top', 'blue', 'M', '15');

/***********************************************SQL Queries********************************************/

/*Q1. Get all that data in there with a single line*/
SELECT * FROM Shirts;

/*Q2. Add a new shirt, purple polo shirt, size M last worn 50 days ago*/
INSERT INTO Shirts(Article, Color, Shirt_Size, Last_Worn)
VALUES('polo shirt', 'purple', 'M', '50');

/*Q3. SELECT all shirts but only print out article and color*/
SELECT Article, Color FROM Shirts;

/*Q4. SELECT all medium shirts and print out everything but shirt_id*/
SELECT Article, color, Shirt_Size, Last_Worn FROM Shirts
WHERE Shirt_Size = 'M';

/*Q5. Update all polo shirts Change their size to L
 NOTE: Shirt_Id <>0 syntax is used to by pass the safe mode error without disabling it*/
UPDATE Shirts
SET Shirt_Size = 'L'
WHERE (Article = 'polo shirt'AND Shirt_Id <>0);

/*Q6. Update the shirt last worn 15 days ago change last_worn to zero ('0')*/
UPDATE Shirts
SET Last_Worn = 0
WHERE (Last_Worn = 15 AND Shirt_Id <>0);

/*Q7. Update all white shirts and change size to 'XS' and color to 'off white'*/
UPDATE Shirts
SET Color = 'off white',
 Shirt_Size = 'XS'
WHERE (Color = 'white' AND Shirt_Id <>0);

/*Q8. Delete all old shirts that were last worn 200 days ago*/
DELETE FROM Shirts
WHERE (Last_Worn = 200 AND Shirt_Id <>0);

/*Q9. Delete all tank tops. Your tastes have changed...*/
DELETE FROM Shirts
WHERE (Article = 'tank top' AND Shirt_Id <>0);

/*Q10. Delete all shirts. You are doing some major spring cleaning!*/
DELETE FROM shirts
WHERE Shirt_Id <>0;

/*Q11. Drop the entire shirts table. Scraping everything... you must be rich or something!*/
DROP TABLE Shirts;





