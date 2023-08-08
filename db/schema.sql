DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;
USE employee_db;

CREATE TABLE departments(
    id INT NOT NULL,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE roles(
    id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    department VARCHAR(255) NOT NULL,
    salary INT NOT NULL
);

CREATE TABLE roster(
    id INT NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    title VARCHAR(30) NOT NULL,
    department VARCHAR(30) NOT NULL,
    salary INT NOT NULL,
    manager VARCHAR(30)
);