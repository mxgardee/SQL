CREATE TABLE Employees  (
    Employee_ID BIGSERIAL,
    Last_Name varchar(50) ,
    First_Name varchar (50) ,
	ID_Number varchar(13) ,
	email varchar(30) ,
	
	CONSTRAINT  Employee_key PRIMARY KEY (Employee_ID)
	
	);
	
	
CREATE TABLE Salaries (
	Salary_ID serial,
	Salary int,
	From_date DATE,
	To_date DATE,
	
	CONSTRAINT  Salary_key PRIMARY KEY (Salary_ID)
	);
	
CREATE TABLE Overtime (
	Overtime_ID bigserial,
 	Hours_worked varchar(5),
	CONSTRAINT Overtime_key PRIMARY KEY (Overtime_id)
	);

ALTER TABLE employees
add column Overtime integer REFERENCES Overtime(Overtime_ID);

ALTER TABLE employees
add column Salaries integer REFERENCES Salaries(Salary_ID);

ALTER TABLE employees
add column Salaries integer REFERENCES Salaries(Salary_ID);

INSERT INTO departments(department_name)
Values('Human Resources');
