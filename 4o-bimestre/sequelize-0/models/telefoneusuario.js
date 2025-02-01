const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const TelefoneUsuario = sequelize.define('TelefoneUsuario', {

  telefone: {
    type: DataTypes.STRING,
    allowNull: false,
  }

});

module.exports = TelefoneUsuario;