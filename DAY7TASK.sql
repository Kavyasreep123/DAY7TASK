CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DeptName VARCHAR(100)
);

-- Create Employees table
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(100),
    DepartmentID INT,
    Salary DECIMAL(10,2)
);

-- Insert values into Departments
INSERT INTO Departments (DepartmentID, DeptName) VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'IT');

-- Insert values into Employees
INSERT INTO Employees (EmpID, EmpName, DepartmentID, Salary) VALUES
(101, 'Alice', 1, 50000),
(102, 'Bob', 2, 60000),
(103, 'Charlie', 3, 70000),
(104, 'David', 1, 55000);

-- Create a View to combine Employees and Departments
CREATE VIEW EmployeeDepartmentView AS
SELECT 
    e.EmpID,
    e.EmpName,
    d.DeptName,
    e.Salary
FROM 
    Employees e
JOIN 
    Departments d ON e.DepartmentID = d.DepartmentID;

SELECT * FROM EmployeeDepartmentView;


SELECT * FROM EmployeeDepartmentView WHERE DeptName = 'HR';
