const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const usuarioPostagem = sequelize.define('usuarioPostagem', {
  cod: {
    type: DataTypes.INTEGER,
    allowNull: false,
    autoIncrement: true,
    primaryKey: true
  },
  
  foto: {
    type: DataTypes.STRING,
    allowNull: false,
  }

});

module.exports = usuarioPostagem;