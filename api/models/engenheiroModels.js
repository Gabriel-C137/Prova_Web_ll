const conexao = require("../config/conexao");

console.log("Acessando Models dos Engenheiros...")


module.exports = {
    getAll,
    getById,
    create,
    update,
    remove,
    listarEngenheiro,
}

function getAll(callback){
    conexao.query("Select * From engenheiro", callback)
}

function getById(codigo, callback){
    conexao.query("Select * From engenheiro Where eng_codigo = "+ codigo, callback)
}

function create(dados, callback) {
    var msql = "INSERT INTO engenheiro SET ? "
    conexao.query(msql, dados, callback)
}

function update(dados, codigo, callback){
    var msql = `UPDATE engenheiro SET ? WHERE eng_codigo = ${codigo}`

    console.log(msql)
    conexao.query(msql, dados, (err, callback) => {
        if(err){
            throw err;
        } else {
            console.log("Registro "+ codigo + " Atualizado!")
        }
    })
}

function remove(codigo, callback) {
    conexao.query("DELETE FROM engenheiro WHERE eng_codigo = "+ codigo, callback)
}

function listarEngenheiro(callback) {
    m_sql = 'SELECT A.eng_codigo, A.eng_nome, A.eng_apelido, B.obr_codigo, B.obr_tipoobra, B.obr_cidade, B.obr_valor FROM engenheiros A LEFT JOIN obras B ON A.eng_codigo = B.eng_codigo';
    
    conexao.query(m_sql, callback);
}
