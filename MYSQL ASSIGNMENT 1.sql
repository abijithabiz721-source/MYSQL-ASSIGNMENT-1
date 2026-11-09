CREATE DATABASE employee;

USE employee;

CREATE TABLE Departments (
    department_id INT,
    department_name VARCHAR(100)
);

CREATE TABLE Location (
    location_id INT,
    location VARCHAR(30)
);

CREATE TABLE Employees (
    employee_id INT,
    employee_name VARCHAR(50),
    gender ENUM('M','F'),
    age INT,
    hire_date DATE,
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2)
);

ALTER TABLE Employees
ADD email VARCHAR(100);

ALTER TABLE Employees
MODIFY designation VARCHAR(200);
ALTER TABLE Employees
DROP COLUMN age;

ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;

RENAME TABLE Departments TO Departments_Info;

RENAME TABLE Location TO Locations;
TRUNCATE TABLE Employees;

DROP TABLE Employees;

DROP DATABASE employee;

DROP DATABASE IF EXISTS employee;

CREATE DATABASE employee;

USE employee;

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Location (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    location VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M','F'),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),

    FOREIGN KEY (department_id)
    REFERENCES Departments(department_id),

    FOREIGN KEY (location_id)
    REFERENCES Location(location_id)
);

INSERT INTO Departments
(department_id, department_name)
VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance'),
(4, 'Marketing');

INSERT INTO Location (location)
VALUES
('Kochi'),
('Thrissur'),
('Calicut'),
('Trivandrum');

INSERT INTO Employees
(employee_id, employee_name, gender, age, hire_date,
 designation, department_id, location_id, salary)
VALUES
(101, 'Arun', 'M', 25, '2025-01-10',
 'Manager', 1, 1, 45000.00),

(102, 'Anjali', 'F', 23, '2025-02-15',
 'Developer', 2, 2, 35000.00),

(103, 'Rahul', 'M', 28, '2025-03-20',
 'Accountant', 3, 3, 40000.00),

(104, 'Meera', 'F', 26, '2025-04-05',
 'HR Executive', 1, 4, 30000.00);
 
 SELECT * FROM Departments;

SELECT * FROM Location;

SELECT * FROM Employees;

INSERT INTO Departments
VALUES (5, 'HR');

INSERT INTO Employees
(employee_id, employee_name, gender, age, department_id, location_id)
VALUES
(105, NULL, 'M', 25, 1, 1);

INSERT INTO Employees
(employee_id, employee_name, gender, age, department_id, location_id)
VALUES
(106, 'Vijay', 'M', 16, 1, 1);

sys_configINSERT INTO Employees
(employee_id, employee_name, gender, age, department_id, location_id)
VALUES
(107, 'Kiran', 'M', 25, 99, 1);