const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const FormasDePagamento = sequelize.define('FormasDePagamento', {
  codPag: {
    type: DataTypes.INTEGER,
    allowNull: false,
    autoIncrement: true,
    primaryKey: true
  },
  
  nomePag: {
    type: DataTypes.STRING,
    allowNull: false,
  }

});

module.exports = FormasDePagamento;