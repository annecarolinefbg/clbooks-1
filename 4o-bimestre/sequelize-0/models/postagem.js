const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const Postagem = sequelize.define('Postagem', {
  cod: {
    type: DataTypes.INTEGER,
    allowNull: false,
    primaryKey: true
  },

  foto_usuario: {
    type: DataTypes.STRING,
    allowNull: false,
  },

  data_nasc: {
    type: DataTypes.DATE,
    allowNull: false,
  },

  status_leitura: {
    type: DataTypes.STRING,
    allowNull: false,
  },

  data_postagem: {
    type: DataTypes.DATE,
    allowNull: false,
  },

  opiniao: {
    type: DataTypes.STRING,
    allowNull: false,
  },

  titulos: {
    type: DataTypes.STRING,
    allowNull: false,
  }
});

module.exports = Postagem;