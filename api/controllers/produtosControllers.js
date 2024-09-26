const produtosModels = require("../models/produtosModels");

const pecas = require('../../pecas.json');
console.log(pecas);

module.exports = {
getSobre,
getAll,
getCod,
getId,
}

function getAll(req, res) {
    console.log("Lendo pecas...\n",pecas)
    return res.json(pecas)
};

///rota de edição de alunos
///function getEdit(req,res) {
///console.log('Editando produtos: ');    
///res.send('<h3> Rota sobre editar produtos  </h3>');
///}

/// rota de exclusão de alunos
///function getDelete(req,res) {
   /// console.log('Excluindo o aluno: ');    
    ///res.send('<h3> Rota de Exclusão de Alunos  </h3>');
///};

// rota sobre
function getSobre(req,res) {
    console.log('Rota Sobre Encontrada!!!');
    res.send('<h3> Rota Sobre Encontrada! <br> Saiba Mais Sobre a Nossa Empresa </h3>');
};


function getCod(req,res) {
    let codigo = req.params.cod;
    console.log('Localizado pecas: ',pecas[codigo]);    
    return res.json(pecas[codigo]);
};


function getId(req, res) {
    let p_codigo = req.params.cod;
    console.log("Código da peca recebido: ", p_codigo);
    pecasModels.getByIdPecas(p_codigo)
    res.send("Retorno da Model!!!");
}