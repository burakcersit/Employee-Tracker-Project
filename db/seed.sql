INSERT INTO department (name)
VALUES ('Legal'),
    ('Sales'),
    ('Engineering');
INSERT INTO roles (title, salary, department_id)
VALUES ('Legal Team Lead', 250000, 1),
    ('Lawyer', 100000, 1),
    ('Sales Lead', 90000, 2),
    ('Salesperson', 50000, 2),
    ('Lead Engineer', 110000, 3),
    ('Engineer', 150000, 3);
INSERT INTO employee (
        first_name,
        last_name,
        role_id,
        manager_id,
        manager_confirm
    )
VALUES ('Webster ', 'Arnold', 1, null, true),
    ('Spike ', 'Chambers', 2, 1, false),
    ('Tad ', 'Sarratt', 2, 1, false),
    ('Harding ', 'Burgess', 3, null, true),
    ('Tony ', 'Morales', 4, 2, false),
    ('Carl ', 'Unity ', 4, 2, false),
    ('Winona ', 'Dickinson', 4, 2, false),
    ('Myrtle ', 'Little', 5, null, true),
    ('Joseph ', 'Hart', 6, 3, false),
    ('Tony', 'Burgess', 6, 3, false);
INSERT INTO manager (first_name, last_name)
SELECT first_name,
    last_name
FROM employee
WHERE manager_confirm = 1;