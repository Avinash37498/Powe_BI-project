-- data base is any collection of related information.
-- two types of database
-- 1. retational -> row, colum and unique key for row access
-- 2. non relational -> anything , graph, 
-- --------------------------------------------------------

-- CREATE DATABASE college;

-- USE college;

-- CREATE TABLE student(
-- id INT PRIMARY KEY,
-- name  VARCHAR (50),
-- age INT NOT NULL
-- );

-- INSERT INTO student  VALUES(1, "Avinash", 27);
-- INSERT INTO student VALUES(1, "MADHU", 25);
-- -- -- ---------------------------------------------------------------

-- CREATE TABLE student2(
-- rollno INT PRIMARY KEY,
-- name VARCHAR (50)
-- );


-- SELECT * FROM student2;

-- INSERT INTO student2
-- (rollno, name)
--  VALUES
-- (101, "Madhu"),
-- (102, "Nishu"),
-- (103, "Manvi");

-- -----------------practice question-----------------------------------------------
-- CREATE DATABASE abc_company;

-- USE abc_company;

-- CREATE TABLE employee(
-- id INT PRIMARY KEY,
-- name VARCHAR (50),
-- salary INT 

-- );

-- INSERT INTO employee
-- (id, name, salary)
-- VALUES
-- (1, "Avinash", 80000),
-- (2, "Madhu", 50000),
-- (3, "Nishu", 45000);

-- SELECT * FROM employee;

-- -------------------keys------------------------------------------------
-- primary key -> always unique (ex->employ id)
-- Foreign key-> not always unique. dusre table ka column kisi table me foreign key hota h

-- CREATE DATABASE college2;
-- USE college2;

--  CREATE TABLE student(
--   rollno INT PRIMARY KEY,
--  name  VARCHAR (50),
--   marks INT NOT NULL,
--  grade VARCHAR(1),
--  city VARCHAR(20)
--   );

--  INSERT INTO student
--  (rollno, name, marks, grade, city)
--  VALUES
--  (101, "anil", 78, "C", "pune"),
--  (102, "bhumika", 93, "A", "mumbai"),
--  (103, "chetan", 85, "B", "Delhi"),
--  (104, "dhuruv", 96, "A", "Delhi"),
--  (105, "farah", 82, "B", "Delhi");

--  SELECT name, marks FROM student; --  it will only name and marks.
--  SELECT * FROM student;  -- *  it will give complete table.
--  SELECT city FROM student; -- it will give all city
--  SELECT DISTINCT CITY  FROM student; -- it will give different city
--  
-- -- ----------------where  clause--------------------------------------------
-- SELECT * FROM student WHERE marks > 80;
-- SELECT * FROM student WHERE marks > 80 AND  city = "mumbai";
-- SELECT * FROM student WHERE marks > 80 OR  city = "mumbai";
-- SELECT * 
-- FROM student 
-- WHERE marks BETWEEN 80 AND 90;


-- SELECT * 
-- FROM student 
-- WHERE  city IN ("Delhi",  "mumbai", "Gurugram");
-- -- -------------------------OPERATOR------------------------

-- -- 1. Arithmatic operator -> +, -,*,/, %
-- -- 2. comparision  operatotr -> >, <, >=, <=
-- -- 3. logical operator -> AND, OR,IN,BETWEEN,ALL, LIKE, ANY
-- -- 4.bitwise operator -> OR, AND 
-- -- 4. BETWEEN, IN, NOT

-- -- ----------------------LIMIT CLOUSE---------------------
-- SELECT * 
-- FROM student 
-- WHERE marks > 80 
-- LIMIT 3;

-- -- ----------ORDER BY clause----------------------------------------
-- SELECT * 
-- FROM student 
-- ORDER BY  city ASC; 


-- SELECT * 
-- FROM student 
-- ORDER BY  city DESC
-- -- -------------------------------------------
-- LIMIT 3;

-- -- ------------Agregate ---FUNCTIONS------------------------
-- -- 1.Count()
-- -- 2.MAX()
-- -- 3.MIN()
-- -- 4.AVG()S

-- SELECT MAX(marks)
--  FROM student ;         --      96  
--  
--  
-- SELECT MIN(marks)
--  FROM student ;          -- 78

-- SELECT AVG(marks)
--  FROM student ;          -- 86.60
--  
--  SELECT COUNT(rollno)
--  FROM student ;          -- 5
--  
--  
--  -- ------------Group BY ---------------------------------
--  SELECT city, count(rollno)
--  FROM student
--  GROUP BY city;

-- SELECT city, name, count(rollno)
--  FROM student
--  GROUP BY city, name;


-- SELECT city, count(rollno)
--  FROM student
--  GROUP BY city
--  HAVING MAX(marks) >90;
--  
-- -- ---------Having clouse------------------------------ 
--  SELECT city
--  FROM student
--  WHERE grade = "A"
--  GROUP BY city
--  HAVING MAX(marks) >= 93
--  ORDER BY city DESC;

-- SET SQL_SAFE_UPDATES =0;  -- ---------SAFE MODE ON---- 1 KRNE PE OFF-------

-- -- -------------TABLE related query------------------
-- -- 1. UPDATE----------

-- UPDATE student
-- SET grade = "o"
-- WHERE grade = "A";

-- UPDATE student
-- SET marks = marks +1;

-- -- 2. DELETE-----------
-- UPDATE student
-- SET marks = 12
-- WHERE rollno = 105;


-- DELETE FROM student
-- WHERE marks < 33;


-- SELECT * FROM student;

-- -----------------forein key--------------


-- CREATE DATABASE college2;
--  USE college2;

-- CREATE TABLE dept(
-- id INT PRIMARY KEY,
-- name  VARCHAR (50)
--    );

-- INSERT INTO dept
-- VALUES
-- (101, "english"),
-- (102, "IT");

-- SELECT * FROM dept;

-- UPDATE dept
-- SET id = 103
-- WHERE id = 102;

-- CREATE TABLE teacher(
-- id INT PRIMARY KEY,
-- name  VARCHAR (50),
-- dept_id INT,
-- FOREIGN KEY (dept_id) REFERENCES dept (id)
-- ON UPDATE CASCADE  -- update krne pr child table me v update hoga
-- ON DELETE CASCADE  -- delte krne pr child table me v delete hoga
--    );


-- INSERT INTO teacher
-- VALUES
-- (101, "aman", 101),
-- (102, "EVE", 102);

-- SELECT * FROM teacher;

-- -- ------------------cascading for FK -------------------
-- -- 1. on delete cascade
-- -- 2. on update cascade


-- ---------------Table related query--------------------
-- Alter(to change schema) -> design -> (column, data type, constraints)
-- 1. ADD COLUMN
-- 2. DROP  COLUMN

-- CREATE DATABASE college2;
--  USE college2;

--  CREATE TABLE student(
--  rollno INT PRIMARY KEY,
--  name  VARCHAR (50),
--  marks INT NOT NULL,
--  grade VARCHAR(1),
--  city VARCHAR(20)
--    );

--  INSERT INTO student
--  (rollno, name, marks, grade, city)
--  VALUES
--  (101, "anil", 78, "C", "pune"),
--  (102, "bhumika", 93, "A", "mumbai"),
--  (103, "chetan", 85, "B", "Delhi"),
--   (104, "dhuruv", 96, "A", "Delhi"),
--   (105, "farah", 82, "B", "Delhi");

-- SELECT * FROM student;

-- ALTER TABLE student       -- 1. ADD COLUMN
-- ADD COLUMN age INT;

-- ALTER TABLE student       -- 1. ADD COLUMN
-- ADD COLUMN age INT NOT NULL DEFAULT 19;

-- ALTER TABLE student       -- 1. MODIFY COLUMN
-- MODIFY COLUMN age VARCHAR(2);

-- ALTER TABLE student       -- 2. DROP  COLUMN
-- DROP COLUMN age ;

-- ALTER TABLE student       -- 2. RENAME TABLE 
-- RENAME TO stu;

-- ALTER TABLE stu      -- 2. RENAME TABLE 
-- RENAME TO student;

-- TRUNCATE TABLE student;   --  table khali kr dega


-- ------------Joins in SQL-------------------- ------------------
       
-- join is used to combine rows from two or more tables based on related column.

-- 1. INNER JOIN

-- CREATE DATABASE college2;
--  USE college2;

--  CREATE TABLE student2(
--  id INT PRIMARY KEY,
--  name VARCHAR (50) 
-- );

--  INSERT INTO student2
--  (id, name)
--  VALUES
--  (101, "Avinash"),
--  (102, "Madhu"),
--  (103, "Nishu");
--   
-- CREATE TABLE course(
--  id INT PRIMARY KEY,
--  course VARCHAR (50) 
-- );

-- INSERT INTO course
--  (id, course)
--  VALUES
--  (101, "Maths"),
--  (102, "physics"),
--  (103, "biology");

-- SELECT * 
-- FROM student2
-- INNER JOIN course
-- ON student2.id = course.id;    -- inner join----

-- SELECT * 
-- FROM student2 as s
-- INNER JOIN course as c
-- -- ON student2.id = course.id;
-- ON s.id = c.id          --  for shor short name s and c


--  -----------LEFT JOIN ------------------------------------

-- It will return all records of left table and matched record from right table.
-- CREATE DATABASE college2;
--  USE college2;

--  CREATE TABLE student1(
--  id INT PRIMARY KEY,
--  name VARCHAR (50) 
-- );

--  INSERT INTO student1
--  (id, name)
--  VALUES
--  (101, "Avinash"),
--  (102, "Madhu"),
--  (103, "Nishu");
--   
-- CREATE TABLE course2(
--  id INT PRIMARY KEY,
--  course VARCHAR (50) 
-- );

-- INSERT INTO course2
--  (id, course)
--  VALUES
--  (108, "Maths"),
--  (102, "physics"),
--  (105, "biology"),
--  (103, "computer science"),
--  (107, "science");
-- SELECT * 
-- FROM student1
-- LEFT JOIN course2
-- ON student1.id = course2.id; --  LEFT JOIN---


-- SELECT * 
-- FROM student1
-- RIGHT JOIN course2
-- ON student1.id = course2.id; --  RIGHT JOIN---return all right table and matched record from left


-- SELECT * 
-- FROM student1
-- LEFT JOIN course2
-- ON student1.id = course2.id   --  FULL JOIN---return all record
-- UNION
-- SELECT * 
-- FROM student1
-- RIGHT JOIN course2
-- ON student1.id = course2.id;


-- --  LEFT EXCLUSIVE and RIGHT EXCLUSIVE-------------------------------

-- SELECT * 
-- FROM student1
-- LEFT JOIN course2
-- ON student1.id = course2.id
-- WHERE course2.id IS NULL;         --  LEFT EXCUSIVE -- right wale ko hta dena h 

-- SELECT * 
-- FROM student1
-- Right JOIN course2
-- ON student1.id = course2.id
-- WHERE student1.id IS NULL;         --  RIGHT EXCUSIVE -- right wale ko hta dena h 

-- -- self join------------------------------------

-- -- UNION CONCEPT----------
-- -- 1. Should be same data type, it will return all records remove dublicate.

-- -- SELECT name  FROM employee,
-- -- NION    -- it will remove dublicate value and return rest of all.
-- -- SELECT name  FROM employee;

-- -- UNION ALL    -- it will return all  value


-- SUB query---------------------------------------
 
CREATE DATABASE college2;
USE college2;

  CREATE TABLE student(
 rollno INT PRIMARY KEY,
 name  VARCHAR (50),
  marks INT NOT NULL,
  grade VARCHAR(1),
  city VARCHAR(20)
   );
   
 INSERT INTO student
 (rollno, name, marks, grade, city)
  VALUES
 (101, "anil", 78, "C", "pune"),
(102, "bhumika", 93, "A", "mumbai"),
(103, "chetan", 85, "B", "Delhi"),
(104, "dhuruv", 96, "A", "Delhi"),
 (105, "farah", 82, "B", "Delhi");

SELECT * FROM student;

SELECT AVG(marks)
FROM student;          -- avg = 89.00

SELECT name, marks
FROM student
WHERE marks > 89.00;

SELECT rollno, name
FROM student
WHERE rollno  % 2 =0 ;



