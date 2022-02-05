const mysql = require('mysql2');

const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'Manchis1',
    database: 'department_table'
});

module.exports = db;