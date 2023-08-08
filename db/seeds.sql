INSERT INTO departments (id, name)
VALUES
    (1, "Sales"),
    (2, "Information Technology"),
    (3, "Accounting"),
    (4, "Human Resources"),
    (5, "Front Desk");

SELECT * FROM departments;

INSERT INTO roles (id, title, department, salary)
VALUES
    (1, "Sales Lead", "Sales", 150000),
    (2, "Sr. Saleman", "Sales", 95000),
    (3, "Jr. Saleman", "Sales", 50000),
    (4, "Lead Engineer", "Information Technology", 120000),
    (5, "Sr. Software Engineer", "Information Technology", 80000),
    (6, "Jr. Software Engineer", "Information Technology", 50000),
    (7, "Accounting Manager", "Accounting", 100000),
    (8, "Sr. Accountant", "Accounting", 90000),
    (9, "Jr. Accountant", "Accounting", 60000),
    (10, "HR Manager", "Human Resources", 100000),
    (11, "HR Clerk", "Human Resources", 45000),
    (12, "Head Receptionist", "Front Desk", 50000),
    (13, "Receptionist", "Front Desk", 35000);

SELECT * FROM roles;