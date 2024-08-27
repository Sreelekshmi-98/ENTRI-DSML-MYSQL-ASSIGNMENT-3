CREATE DATABASE OFFICE;

USE OFFICE;

CREATE TABLE Managers (Manager_Id INT PRIMARY KEY, First_name VARCHAR(50), Last_Name VARCHAR(50),
  DOB DATE, Age INT CHECK(Age >=18), Last_update DATE, Gender VARCHAR(10), Department VARCHAR(50),
  Salary DECIMAL(10, 2) NOT NULL);
  
  DESC Managers;
  
  INSERT INTO Managers (Manager_Id, First_name, Last_Name, DOB, Age ,  Last_update,
   Gender, Department, Salary) VALUES
   (1, 'Arjun', 'Nair', '1992-02-18', 32, '2024-05-02', 'MALE', 'IT', 26000.00),
    (2, 'Evelyn Grace', 'Thompson', '1989-01-09',35,'2024-06-12','FEMALE', 'MARKETING', 30000.00),
    (3, 'Benjamin Lucas', 'Reed', '1995-06-30', 29, '2024-03-26', 'MALE','IT', 20000.00 ),
    (4, 'Rahul', 'Gupta', '1994-09-09', 30, '2024-01-21', 'MALE', 'HR', 40000.00),
    (5, 'Aaliya', 'Sharma', '1988-10-01', 36, '2024-07-11', 'FEMALE', 'INSURANCE', 22000.00),
    (6, 'Isabella Rose', 'Bennett', '1998-09-22', 26, '2024-08-03', 'FEMALE', 'ACCOUNTS', 35000.00),
    (7, 'Kavya', 'Iyer', '1991-12-02', 33, '2024-07-23', 'FEMALE', 'ACCOUNTS', 35000.00),
    (8, 'Siddarth', 'Mohan', '1999-05-10', 25, '2024-06-10', 'MALE', 'MARKETING', 26000.00),
    (9, 'Deepthi', 'Varma', '1998-04-15', 26, '2024-04-29', 'FEMALE', 'IT', 24000.00),
    (10, 'Suraj', 'Joshi', '1990-11-04', 34, '2024-07-16', 'MALE', 'IT', 37000.00);
    
    SELECT * FROM Managers;
    
    SELECT First_name, Last_Name, DOB
FROM Managers
WHERE Manager_Id = 1;

SELECT First_name, Last_Name, Salary * 12 AS Annual_Income
FROM Managers;

SELECT *
FROM Managers
WHERE First_name != 'Aaliya';

SELECT *
FROM Managers
WHERE Department = 'IT' AND Salary > 25000;

SELECT *
FROM Managers
WHERE Salary BETWEEN 10000 AND 35000;



