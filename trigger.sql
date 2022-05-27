CREATE TABLE employees (
	id int auto_increment primary key,
	employee_number int default 0,
    first_name varchar(50) default "",
    last_name varchar(50) default "",
    email varchar(50) default ""
) engine = innodb;

CREATE TABLE employees_audit (
    id INT AUTO_INCREMENT PRIMARY KEY,
    employeeNumber INT NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    changedat DATETIME DEFAULT NULL,
    action VARCHAR(50) DEFAULT NULL
) engine = innodb;

CREATE TRIGGER before_employees_update
BEFORE UPDATE ON employees FOR EACH ROW
INSERT INTO employees_audit
SET action = "update",
     employeeNumber = OLD.employee_number,
     lastname = OLD.last_name,
     changedat = NOW();
     
INSERT INTO employees SET employee_number = 1056, first_name = "fa", last_name = "az", email = "fa@g";
SELECT * FROM employees;

UPDATE employees SET last_name = "aziz" 
WHERE id = 1;

SELECT * FROM employees_audit;