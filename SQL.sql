Create database Cie2

Create table Department3(
dep_ID INT,
dep_name VARCHAR,
PRIMARY KEY (dep_ID)
);

SELECT * FROM DEPARTMENT2
SELECT * FROM EMPLOYEE2

Create table Employee3(
emp_ID INT,
full_name VARCHAR,
salary ,
dep_ID INT,
PRIMARY KEY (emp_ID),
FOREIGN KEY (dep_ID) REFERENCES Department2(dep_ID)
);

INSERT INTO Department3 (dep_ID, dep_name)
VALUES 
(1, 'Marketing'),
(2, 'Finance'),
(3, 'Sales');

INSERT INTO Employee3 (emp_ID, full_name, salary, dep_ID)
VALUES 
(1, 'Hannah Power', 50000, 1),
(2, 'Laura Maher', 60000, 2),
(3, 'Patrick Scott', 62000, 1),
(4, 'Dermot Malone', 58000, 1),
(5, 'Finbar Lynch', 63000, 2),
(6, NULL, NULL, 3);

SELECT * FROM DEPARTMENT2

INSERT INTO Department3 (dep_ID, dep_name)
VALUES 
(4, 'Human Resources');

INSERT INTO Employee3 (emp_ID, full_name, salary, dep_ID)
VALUES 
(7, 'Liam Curren', 68000, 4);

SELECT AVG (salary) AS avg_salary FROM Employee3;

SELECT UPPER(full_name) AS UpCsFullName FROM Employee3;

SELECT (dep_name) FROM department3, 
SUM (emp_ID) FROM employee3,
JOIN Department2 ON dep_id > 1;

DELETE FROM EMPLOYEE3
WHERE (full_name) = 'Finbar Lynch';

DROP table EMPLOYEE2
DROP table DEPARTMENT2