const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const Livros = sequelize.define( 'Livros', {
  cod: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true
  },
  valor: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },

  isbn: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true
  },

  nome: {
    type: DataTypes.STRING,
    allowNull: false,
  },

  genero: {
    type: DataTypes.STRING,
    allowNull: false,
  }

});

module.exports = Livros;