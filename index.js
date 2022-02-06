const inquirer = require('inquirer');
const mysql2 = require('mysql2');
const sequelize = require('sequelize');
// const table = require('console.table');
const db = require('./db/connection');

const table = () => {
    inquirer.prompt([
        {
            type: 'list',
            name: 'choices',
            message: 'Which do you wish to see',
            choices: [
                'View all departments',
                'View all roles',
                'View all employees',
                'Add a department',
                'Add a role',
                'Add an employee',
                'Update employee role'
            ]
        }
    ])

    .then((promptOption) => {
        switch(promptOption.choices) {
            case 'View all departments':
            viewDepts();
            break;
            case 'View all roles':
            viewRoles();
            break;
            case 'View all employees':
            viewEmployees();
            break;
            case 'Add a department':
            break;
            case 'Add a role':
            break;
            case 'Add an employee':
            break;
            case 'Update employee role':
            break;
        }
    })
}

const viewDepts = () => {
    db.query('SELECT * FROM department_table ORDER BY id', function (err, results){
        console.table(results)
    })
}

const viewEmployees = () => {
    db.query('SELECT * FROM employee_table', function (err, results) {
        console.table(results)
    })
}

const viewRoles = () => {
    db.query('SELECT * FROM role_table ORDER BY id', function (err, results) {
        console.table(results)
    })
}

table();