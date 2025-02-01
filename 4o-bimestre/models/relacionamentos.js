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

 Usuarios.hasMany(Notificacao, { foreignKey: 'codUser'})
 Notificacao.belongsTo(Usuarios, { foreignKey: 'codUser' });

 Usuarios.hasMany(Comentario, { foreignKey: 'codUser' });
 Comentario.belongsTo(Usuarios, { foreignKey: 'codUser' });

 PagamentoCartao.hasMany(FormasDePagamento, { foreignKey: 'codPag' });
 FormasDePagamento.belongsTo(PagamentoCartao, { foreignKey: 'codPag'});

 Usuarios.hasMany(Entrega, {foreignKey: 'codUser'});
 Entrega.belongsTo(Usuarios, { foreignKey: 'codUser' });


 //N-M
 Usuarios.belongsToMany(Postagem, { through: usuarioPostagem });
 Postagem.belongsToMany(Usuarios, { through: usuarioPostagem });

 Usuarios.belongsToMany(Livros, {through: UsuarioLivros});
 Livros.belongsToMany(Usuarios, {through: UsuarioLivros});

 Usuarios.belongsToMany(Livros, {through: UsuarioVendas});
 Livros.belongsToMany(Usuarios, {through: UsuarioVendas});
 FormasDePagamento.belongsToMany(Livros, {through: UsuarioVendas});
 Livros.belongsToMany(FormasDePagamento, {through: UsuarioVendas});
 Usuarios.belongsToMany(FormasDePagamento, {through: UsuarioLivros})

Usuarios.belongsToMany(Plano, {through: 'Assinaturas'});
Plano.belongsToMany(Usuarios, {through: 'Assinaturas'});
}