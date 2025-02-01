const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const UsuarioVendas = sequelize.define('UsuarioVendas', {
  
  nome: {
    type: DataTypes.STRING,
    allowNull: false,
  },

  valor: {
    type: DataTypes.INTEGER,
  },

  quantidade: {
    type: DataTypes.INTEGER
  }

});

module.exports = UsuarioVendas;