create database SchoolDB;
USE SchoolDB;
CREATE TABLE Students(
	student_id INT,
    name VARCHAR(25),
    subject VARCHAR(15),
    PRIMARY KEY(student_id)
    );

DESCRIBE students; 
ALTER TABLE students ADD gpa DECIMAL(4,2);   
ALTER TABLE students DROP COLUMN gpa;    
INSERT INTO students VALUES(1,'Raju',"Computer");
INSERT INTO students(student_id,name) VALUES(2,'Gopan');
INSERT INTO students VALUES(3,'John',"Chemistry");

SELECT * FROM students;
SELECT name FROM students;
SELECT name FROM students WHERE subject="Computer";
SELECT name,subject FROM students WHERE subject="Computer";
SELECT * FROM students WHERE subject="Computer";
DROP TABLE students;

CREATE TABLE Students(
	student_id INT,
    name VARCHAR(25) NOT NULL,
    subject VARCHAR(15) UNIQUE,
    PRIMARY KEY(student_id)
    );
DESCRIBE students;

INSERT INTO students VALUES(1,'Raju',"Computer");
SELECT * FROM students;

INSERT INTO students VALUES(2,NULL,"Chemistry");
INSERT INTO students VALUES(3,'John',"Computer");
INSERT INTO students VALUES(2,'John',"Biology");
SELECT * FROM students;
DROP TABLE students;

CREATE TABLE Students(
	student_id INT AUTO_INCREMENT,
    name VARCHAR(25),
    subject VARCHAR(15) DEFAULT "undesided",
    PRIMARY KEY(student_id)
    );
    
INSERT INTO students VALUES(1,'Raju',"Computer");
INSERT INTO students VALUES(2,'John',"Biology");
SELECT * FROM students;
INSERT INTO students(name,subject) VALUES('Gopan',"Computer");
INSERT INTO students(name,subject) VALUES('Thomas',"Chemistry");
INSERT INTO students(name,subject) VALUES('Joe',"Biology");
SELECT * FROM students;
INSERT INTO students(name) VALUES('Raman');
SELECT * FROM students;

SET SQL_SAFE_UPDATES=0;
UPDATE students 
SET subject="Bio"
WHERE subject="Biology";
SELECT * FROM students;

DELETE FROM students
WHERE student_id=5;
SELECT * FROM students;

DELETE FROM students;
DESCRIBE students;
SELECT * FROM students;

DROP DATABASE Schooldb;
SELECT * FROM students WHERE name LIKE '%n';