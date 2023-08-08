DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;
USE employee_db;

CREATE TABLE departments(
    id INT NOT NULL AUTO_INCREMENT primary key,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE roles(
    id INT NOT NULL AUTO_INCREMENT primary key,
    title VARCHAR(255) NOT NULL,
    department VARCHAR(255) NOT NULL references departments(id) ,
    salary INT NOT NULL
);

CREATE TABLE roster(
    id INT NOT NULL AUTO_INCREMENT primary key,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    roles INT references roles(id),
    manager INT references roster(id) ON DELETE SET NULL
);