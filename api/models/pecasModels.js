module.exports = {
    getByIdPecas,
}

const pecas = require('../../pecas.json');
console.log(pecas);

function getByIdPecas(p_codigo, retorno){
    console.log("Pesquisando peca" + p_codigo + "no Vetor das Pecas!");
    retorno = pecas.filter((pecas) => pecas.id == p_codigo)
    console.log("Retorno da Model Pecas: ", retorno)
}