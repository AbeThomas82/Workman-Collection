const inquirer = require('inquirer')
const mysql = require("mysql2")
require('dotenv').config()
require("console.table")
const db = mysql.createConnection({
    host: "localhost",
    user: process.env.DB_User,
    password: process.env.DB_Password,
    database: "employee_db"
})
db.connect(() => {
    console.log("Employee Tracker")
    start_menu()
})

function start_menu() {
    inquirer.prompt([
        {
            type: "list",
            message: "What would you like to do?",
            name: "option",
            choices: ["View Employees", "View Departments", "View Roles", "Add Employee", "Add Department", "Add Roles", "Update Employee Role", "Exit Application"]
        }
    ]).then(response => {
        switch (response.option) {
            case "View Employees":
                viewEmployees();
                break;
            case "View Departments":
                viewDepartments();
                break;
            case "View Roles":
                viewRoles();
                break;
            case "Add Employee":
                addEmployee();
                break;
            case "Add Department":
                addDepartment();
                break;
            case "Add Roles":
                addRoles();
                break;
            case "Update Employee Role":
                updateEmployee();
                break;
            case "Exit Application":
                db.end()
                process.exit(0);
               
        }
    })
}

function viewEmployees(){
    db.query("SELECT * FROM employee_db.roster;",function(err,data){
        if(err) throw err;
        console.table(data)
        start_menu()
    })
}
function viewDepartments(){
    db.query("SELECT * FROM employee_db.departments;",function(err,data){
        if(err) throw err;
        console.table(data)
        start_menu()
    })
}
function viewRoles(){
    db.query("SELECT * FROM employee_db.roles;",function(err,data){
        if(err) throw err;
        console.table(data)
        start_menu()
    })
}

function addEmployee(){
    inquirer.prompt([
        {
            type:"input",
            message:"Enter employee first name: ",
            name:"first_name",

            type:"input",
            message:"Enter employee last name: ",
            name:"last_name"


        }
    ]).then(response =>{
        db.query("INSERT INTO roster (name) VALUES (?);",response.name,function(err,result){
            if(err) throw err;
            console.log(result)
            start_menu()
        })
    })
}

function addDepartment(){
    inquirer.prompt([
        {
            type:"input",
            message:"Enter new department name: ",
            name:"department"

        }
    ]).then(response =>{
        db.query("INSERT INTO departments (name) VALUES (?);",response.department,function(err,result){
            if(err) throw err;
            console.log(result)
            start_menu()
        })
    })
}

