const inquirer = require('inquirer');
const mysql2 = require('mysql2');
const sequelize = require('sequelize');

let table = () => {
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
}