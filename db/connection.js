// const mysql = require('mysql2');
// const inquirer = require('inquirer');
// const sequelize = require('sequelize');
// const table = require('console.table');

const db = mysql.createConnection(
    {
        host: "localhost",
        user: "root",
        password: "Manchis1",
        database: "subordinate_table",
    },
    console.log("Now connected to DataBase")
);

module.exports = db;