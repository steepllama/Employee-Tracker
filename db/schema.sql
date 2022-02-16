CREATE DATABASE IF EXISTS department_table;
CREATE DATABASE department_db;
USE department_db;

DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS roleTable;
DROP TABLE IF EXISTS employeeTable;

CREATE TABLE department(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE roleTable(
    id INT AUTO_INCREMENT NOT NULL,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL(10,2),
    department_id INT,
    PRIMARY KEY(id)

    CONSTRAINT fk_department_table
    FOREIGN KEY (department_id)
    REFERENCES department(id)
    ON DELETE CASCADE
);

CREATE TABLE employeeTable(
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT 

    CONSTRAINT fk_department_table
    FOREIGN KEY (department_id)
    REFERENCES department(id)
    ON DELETE CASCADE
);