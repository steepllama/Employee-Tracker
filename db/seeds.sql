INSERT INTO department_table
VALUES
('Backroom'),
('Sales'),
('Manager'),
('Project Manager');

INSERT INTO employee_role(department_id, title, salary)
VALUES
(1, 'Backroom', 52000),
(2, 'Sales', 65000),
(3, 'Manager', 75000),
(4, 'Project Manager', 85000);

INSERT INTO employee(department_id, first_name, last_name)
VALUES
(1, 'Ash', 'Ketchum'),
(2, 'Brock', 'Onix'),
(3, 'Misty', 'Starmie'),
(4, 'Juan', 'Million');