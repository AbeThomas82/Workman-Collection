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

INSERT INTO roster (id, first_name, last_name, title, department, salary, manager)
VALUES
    (1, "J. Jonah", "Jameson", "Sales Lead", "Sales", 150000, ""),
    (2, "Jenny", "Jones", "HR Manager", "Human Resources", 100000, ""),
    (3, "Jamaal", "Wilkes", "Sr. Software Engineer", "Information Technology", 80000, "Domingo Chavez"),
    (4, "Giuseppe", "Garibaldi", "Jr. Software Engineer", "Information Technology", 50000, "Domingo Chavez"),
    (5, "Joan", "Jett", "Receptionist", "Front Desk", 35000, "Vijaya Patel"),
    (6, "John", "Smith", "HR Clerk", "Human Resources", 45000, "Jenny Jones"),
    (7, "Vijaya", "Patel", "Head Receptionist", "Front Desk", 50000, ""),
    (8, "Domingo", "Chavez", "Lead Engineer", "Information Technology", 120000, ""),
    (9, "Bernie", "Madoff", "Accounting Manager", "Accounting", 100000, ""),
    (10, "Canine", "St. Bernard", "Sr. Accountant", "Accounting", 90000, "Bernie Madoff"),
    (11, "Lois", "Lane", "Sr. Salesman", "Sales", 95000, "J. Jonah Jameson"),
    (12, "Gil", "Chesterton", "Jr. Accountant", "Accounting", 60000, "Bernie Madoff"),
    (13, "Johnny", "Chan", "Jr. Salesman", "Sales", 50000, "J. Jonah Jameson");

SELECT * FROM roster;