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

INSERT INTO roster (id, first_name, last_name, roles, manager)
VALUES
    (1, "Jonah", "Jameson",1, NULL),
    (2, "Jenny", "Jones",10, NULL),
    (8, "Domingo", "Chavez", 4, NULL),
    (3, "Jamaal", "Wilkes", 4, 8),
    (4, "Giuseppe", "Garibaldi", 6,8),
    (7, "Vijaya", "Patel", 12, NULL),
    (5, "Joan", "Jett", 13, 7),
    (6, "John", "Smith", 11,2),
    (9, "Bernie", "Madoff", 7, NULL),
    (10, "Canine", "St. Bernard", 8, 9),
    (11, "Lois", "Lane", 2, 1),
    (12, "Gil", "Chesterton", 9, 9),
    (13, "Johnny", "Chan", 3, 1);

SELECT * FROM roster;