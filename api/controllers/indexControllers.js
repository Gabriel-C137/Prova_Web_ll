
module.exports = {
    indexNotFound
}

function indexNotFound(req, res) {
    res.send('<h3>Página Não Encontrada!</h3><p> Erro 404</p> <br><br> <h3> Nova rota sobre produtos </h3>')
}