const { DataTypes } = require('sequelize');
const Usuarios = require('./usuarios');
const Livros = require('./livros');
const sequelize = require('../db');

const UsuarioLivros = sequelize.define('UsuarioLivros', {
  valor: {
    type: DataTypes.INTEGER,
    allowNull: false,
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
  }
});

module.exports = UsuarioLivros;