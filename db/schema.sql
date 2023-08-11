DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;
USE employee_db;

CREATE TABLE department(
    id INT NOT NULL AUTO_INCREMENT primary key,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE role(
    id INT NOT NULL AUTO_INCREMENT primary key,
    title VARCHAR(30) NOT NULL,
    department VARCHAR(255) NOT NULL references departments(id) ,
    salary DECIMAL NOT NULL
);

CREATE TABLE employee(
    id INT NOT NULL AUTO_INCREMENT primary key,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT references roles(id),
    manager_id INT references roster(id) ON DELETE SET NULL
);