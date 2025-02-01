const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const Entrega = sequelize.define('Entrega', {
  cod: {
    type: DataTypes.INTEGER,
    allowNull: false,
    autoIncrement: true,
    primaryKey: true
  },
  
  
  estado: {
    type: DataTypes.STRING,
    allowNull: false,
  },

  rua: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  complemento: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  referencia: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  cidade: {
    type: DataTypes.STRING,
    allowNull: false,
  }
});

module.exports = Entrega;