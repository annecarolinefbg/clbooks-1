const {Sequelize} = require('sequelize');
const sequelize = new Sequelize(
    'clbooks', 
    'aluno.ifal', // nome de usuario  
    'aluno.ifal', // senha de acesso
    {
        host: 'localhost',
        dialect: 'mysql'
    }
);
module.exports = sequelize;       