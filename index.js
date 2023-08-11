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
    db.query("SELECT * FROM employee_db.roster;",function(err,data){
        let managerArray = [];
        if(err) throw err;
        for(let i = 0; i < data.length; i++){
            managerArray.push({name:data[i].first_name + " " + data[i].last_name,value:data[i].id})
        }
        managerArray.push("None")
    inquirer.prompt([
        {
            type:"input",
            message:"Enter employee first name: ",
            name:"first_name",
        },
        {
            type:"input",
            message:"Enter employee last name: ",
            name:"last_name",
        },
        {
            type:"input",
            message:"Enter employee role: ",
            name:"roles",
        },
        {
            type:"list",
            message:"Enter employee manager: ",
            name:"manager",
            choices: managerArray
        }
    ]).then(response =>{
        //if the employee has no manager, set the manager to null
        if(response.manager === "None"){
            response.manager = null;
        }else
            response.manager
        
        db.query("INSERT INTO roster (first_name, last_name, roles, manager) VALUES (?,?,?,?);",[response.first_name,response.last_name,response.roles,response.manager],function(err,result){
            if(err) throw err;
            console.log(result)
            start_menu()
        })
    })
}
)}

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

function addRoles(){
    inquirer.prompt([
        {
            type:"input",
            message:"Name of role: ",
            name:"title"

        },
        {
            type:"input",
            message:"Department of position:",
            name:"department"
        },
        {
            type:"input",
            message:"Salary for position: ",
            name:"salary"
        }
    ]).then(response =>{
        db.query("INSERT INTO roles (title, department, salary) VALUES (?,?,?);",[response.title,response.department,response.salary],function(err,result){
            if(err) throw err;
            console.log(result)
            start_menu()
        })
    })
}

function updateEmployee(){
    db.query("SELECT * FROM employee_db.roster;",function(err,data){
        let employeeArray = [];
        if(err) throw err;
        for(let i = 0; i < data.length; i++){
            employeeArray.push(data[i].first_name + " " + data[i].last_name)
        }
        employeeArray.push("None")
    db.query("SELECT * FROM employee_db.roster;",function(err,data){
        let roleArray = [];
        if(err) throw err;
        for(let i = 0; i < data.length; i++){
            roleArray.push(data[i].roles)
        }
        roleArray.push("None")
    inquirer.prompt([
        {
            type:"list",
            message:"Select employee: ",
            name: "option",
            choices: employeeArray
        },
        {
            type: "list",
            message: "New position title: ",
            name: "option",
            choices: roleArray   
        }
    ]).then(response =>{
        db.query("INSERT INTO roster (first_name,last_name,roles) VALUES (?,?,?);",[response.first_name,response.last_name,response.roles],function(err,result){
            if(err) throw err;
            console.log(result)
            start_menu()
        })
    })
}
    )})}