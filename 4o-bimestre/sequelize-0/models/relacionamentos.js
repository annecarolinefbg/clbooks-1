const Comentario = require('./comentarios');
const Entrega = require('./entrega');
const FormasDePagamento = require('./formadepagamento');
const Livros = require('./livros');
const Notificacao = require('./notificacao');
const PagamentoCartao = require('./pagamentocartao');
const Plano = require('./planos');
const Postagem = require('./postagem');
const TelefoneUsuario = require('./telefoneusuario');
const UsuarioLivros = require('./usuarioLivros');
const usuarioPostagem = require('./usuarioPostagem');
const Usuarios = require('./usuarios');
const UsuarioVendas = require('./usuarioVendas');

module.exports = () => {

 // 1-N: 
 Usuarios.hasMany(TelefoneUsuario, { foreignKey: 'codUser' });
 TelefoneUsuario.belongsTo(Usuarios, { foreignKey: 'codUser' });

 Usuarios.hasMany(Postagem, { foreignKey: 'codUser' });
 Postagem.belongsTo(Usuarios, { foreignKey: 'codUser' });


 usuarioPostagem.hasMany(Notificacao, { foreignKey: 'cod' });
 Notificacao.belongsTo(usuarioPostagem, { foreignKey: 'cod' });

 Usuarios.hasMany(Comentario, { foreignKey: 'codUser' });
 Comentario.belongsTo(Usuarios, { foreignKey: 'codUser' });

 FormasDePagamento.hasMany(PagamentoCartao, { foreignKey: 'codPag' });
 PagamentoCartao.belongsTo(FormasDePagamento, { foreignKey: 'codPag'});

 Usuarios.hasMany(Entrega, {foreignKey: 'codUser'});
 Entrega.belongsTo(Usuarios, { foreignKey: 'codUser' });


 //N-M
 Usuarios.belongsToMany(Postagem, { through: 'usuarioPostagem' });
 Postagem.belongsToMany(Usuarios, { through: 'usuarioPostagem' });

 Usuarios.belongsToMany(Livros, { 
    through: UsuarioLivros, 
    foreignKey: 'codUser', 
    otherKey: 'codLivro',
    constraints: false 

  });
  
  Livros.belongsToMany(Usuarios, { 
    through: UsuarioLivros, 
    foreignKey: 'codLivro', 
    otherKey: 'codUser',
    constraints: false 
  });

 Usuarios.belongsToMany(FormasDePagamento, { through: 'usuarioVendas', foreignKey: 'codUser' });
 FormasDePagamento.belongsToMany(Usuarios, { through: 'usuarioVendas', foreignKey: 'codPag' });

 Usuarios.belongsToMany(Plano, {
    through: 'Assinaturas',
    foreignKey: 'codUser',
    otherKey: 'codPlano',
    constraints: false 
  });
  
  Plano.belongsToMany(Usuarios, {
    through: 'Assinaturas',
    foreignKey: 'codPlano',
    otherKey: 'codUser',
    constraints: false 
  });
  
}