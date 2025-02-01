const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const Plano = sequelize.define('Plano', {
  cod: {
    type: DataTypes.INTEGER,
    allowNull: false,
    primaryKey: true
  },
  
  valor: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },

   tipoAssinatura: {
    type: DataTypes.STRING,
    allowNull: false,
  },

});

module.exports = Plano;