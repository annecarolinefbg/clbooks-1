const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const UsuarioLivros = sequelize.define('UsuarioLivros', {
  valor: {
    type: DataTypes.STRING,
    allowNull: false,
    autoIncrement: true,
    primaryKey: true
  },
  
  desejados: {
    type: DataTypes.STRING,
    allowNull: false,
  },

  abandonados: {
    type: DataTypes.STRING,
    allowNull: false,
  },

  atual: {
    type: DataTypes.STRING,
    allowNull: false,
  },
});

module.exports = UsuarioLivros;