
module.exports = {
    index,
    indexLogin,
    indexNotFound,
}

function index(req, res) {
    console.log('Rota Raiz Encontrada!!!');
    res.send('<h3> Rota Raiz Encontrada! <br><br> Nova Rota Sobre Produtos  <br><br> Avaliação de Web-II - Backend </h3>');
}

function indexLogin(req, res) {
    res.render('produtos.ejs', {
        title: "Login",
        mensagem: "Nova rota sobre produtos"
    })
}

function indexNotFound(req, res) {
    res.send('<h3>Página Não Encontrada!</h3><p> Erro 404</p> <br><br> <h3> Nova rota sobre produtos </h3>')
}