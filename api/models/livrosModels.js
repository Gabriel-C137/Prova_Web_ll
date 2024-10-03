const conexao = require("../config/conexao");

console.log("Acessando Models dos Livros...")

function getAll(callback) {
    conexao.query("select * from livros", callback)
}

module.exports = {
    getAll,
}