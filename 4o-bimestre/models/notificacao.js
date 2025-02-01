const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const Notificacao = sequelize.define('Notificacao', {
  cod: {
    type: DataTypes.INTEGER,
    allowNull: false,
    autoIncrement: true,
    primaryKey: true
  },
  
  interacao: {
    type: DataTypes.STRING,
    allowNull: false,
  }
});

module.exports = Notificacao;