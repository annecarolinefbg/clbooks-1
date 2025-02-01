const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const Usuario = sequelize.define('Usuario', {
  codUser: {
    type: DataTypes.INTEGER,
    allowNull: false,
    primaryKey: true
  },
  bio: {
    type: DataTypes.TEXT,
    allowNull: false,
  },

  nome: {
    type: DataTypes.STRING,
    allowNull: false,
  },

  email: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true
  },

  senha: {
    type: DataTypes.STRING,
    allowNull: false,
  },

  dataNasc: {
    type: DataTypes.DATE,
    allowNull: false,
  },

  usuario: {
    type: DataTypes.STRING,
    allowNull: false,
  },

  endereco: {
    type: DataTypes.STRING,
    allowNull: false,
  },

  escritor: {
    type: DataTypes.BOOLEAN,
    allowNull: false,
    defaultValue: false
  },
});

module.exports = Usuario;