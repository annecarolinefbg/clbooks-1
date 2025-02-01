const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const Comentario = sequelize.define('Comentario', {
  cod: {
    type: DataTypes.INTEGER,
    allowNull: false,
    autoIncrement: true,
    primaryKey: true
  },
  
  texto: {
    type: DataTypes.TEXT,
    allowNull: false,
  },
  
  foto_comentario: {
    type: DataTypes.STRING,
    allowNull: false,
  },

  localizacao: {
    type: DataTypes.STRING,
    allowNull: false,
  },

  gif: {
    type: DataTypes.STRING,
    allowNull: false,
  },

  data_comentario: {
    type: DataTypes.DATE,
    allowNull: false,
  },

});

module.exports = Comentario;