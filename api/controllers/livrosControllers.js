const livrosModels = require("../models/livrosModels.js");

module.exports = {
getAll,
}

function getAll(req, res) {
    console.log("\nController - Iniciando a Leitura dos Dados dos Livros da Model...\n")
    var lerLivros
    console.time(lerLivros)
    livrosModels.getAll(function(err, resultado) {
        if(err){
            throw err;
        }else{
            console.log("Buscar Livros na Model...")
            console.log(resultado)
            console.timeEnd(lerLivros)

            return res.json(resultado)
        }
    }
    )
};

