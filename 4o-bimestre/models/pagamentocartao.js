const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const PagamentoCartao = sequelize.define('PagamentoCartao', {
  cod: {
    type: DataTypes.INTEGER,
    allowNull: false,
    autoIncrement: true,
    primaryKey: true
  },
  
  nome: {
    type: DataTypes.STRING,
    allowNull: false,
  },

  numero_cart: {
    type: DataTypes.INTEGER,
    unique: true,
    allowNull: false
  },
  cvv: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },

  cpf: {
    type: DataTypes.INTEGER,
    allowNull: false,
    unique: true
  }
});

module.exports = PagamentoCartao;