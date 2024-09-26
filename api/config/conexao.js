var mysql = require("mysql2");
var database = "livros";

var conexao = mysql.createConnection({
    user: 'root',
    password: 'fatec123*',
    host: 'localhost',
    port: 3306
})

conexao.connect((err) => {
    if(err){
        console.log("Erro ao conectar no my sql...");
        return;
    }
    conexao.query('USE ' + database);
    console.log("\nConexao estabelecida com sucesso");

    module.exports - conexao;
})