const sequelize = require('./db');
const Setuprelacionamentos = require('./models/relacionamentos')

(async () => {
    try {
      // Configurar relacionamentos
      Setuprelacionamentos();
  
      // Sincronizar o banco de dados
      await sequelize.sync({ force: true });
      console.log('Banco de dados sincronizado.');

    } catch (error) {
      console.error('Erro ao sincronizar o banco de dados:', error);
    }
  })();