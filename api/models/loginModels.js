const conexao = require("../config/conexao");

console.log("Acessando Models dos Login...")


module.exports = {
    validarPSW
}

function validarPSW(p_login, p_senha, callback){
    
   const m_sql = `SELECT * FROM usuarios WHERE usu_apelido = "${p_login}" AND usu_password = "${p_senha}"`;

   conexao.query(m_sql, callback)
}