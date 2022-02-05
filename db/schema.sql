DROP TABLE IF EXISTS department_table;
DROP TABLE IF EXISTS role_table;
DROP TABLE IF EXISTS employee_table;

CREATE TABLE department_table(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE role_table(
    id INT AUTO_INCREMENT NOT NULL,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL(10,2),
    department_id INT
    PRIMARY KEY(id)

    CONSTRAINT fk_department_table
    FOREIGN KEY (department_id)
    REFERENCES department_table(id)
    ON DELETE CASCADE
);

CREATE TABLE employee_table(
    id INT AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT 

    CONSTRAINT fk_department_table
    FOREIGN KEY (department_id)
    REFERENCES department_table(id)
    ON DELETE CASCADE
);