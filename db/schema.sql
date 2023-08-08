DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;
USE employee_db;

CREATE TABLE departments (
    id NOT NULL,
    name VARCHAR(255) NOT NULL,
);