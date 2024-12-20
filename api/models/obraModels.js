const conexao = require("../config/conexao");

console.log("Acessando Models das Obras...")


module.exports = {
    getAll,
    getById,
    create,
    update,
    remove,
    listarObra,
}

function getAll(callback){
    conexao.query("Select * From obra", callback)
}

function getById(codigo, callback){
    conexao.query("Select * From obra Where obr_codigo = "+ codigo, callback)
}

function create(dados, callback) {
    var msql = "INSERT INTO obra SET ? "
    conexao.query(msql, dados, callback)
}

function update(dados, codigo, callback){
    var msql = `UPDATE obra SET ? WHERE obr_codigo = ${codigo}`

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
    conexao.query("DELETE FROM obra WHERE obr_codigo = "+ codigo, callback)
}

function listarObra(callback) {
    m_sql = 'SELECT  A.obr_codigo,  A.obr_cidade,  A.obr_tipoobra,  A.obr_valor,  A.obr_dtinicio,  B.eng_nome, B.eng_apelido,  B.eng_crea, B.eng_datacrea FROM obras A  LEFT JOIN engenheiros B ON A.eng_codigo = B.eng_codigo';
    
    conexao.query(m_sql, callback);
}
