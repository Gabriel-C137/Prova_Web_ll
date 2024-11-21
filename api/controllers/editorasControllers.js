const editorasModels = require("../models/editorasModels.js");

module.exports = {
getAll,
getById,
create,
update,
remove,
}


function getAll(req, res){
    console.log("\nController - Iniciando a Leitura dos Dados dos Livros da Model...\n")
    var lerLivros
    console.time(lerLivros)
    editorasModels.getAll(function(err, resultado){
        if(err){
            throw err
        }else {
            console.log("Buscar Livros na Model...")
            console.log(resultado)
            console.timeEnd(lerLivros)

            return res.json(resultado)
        }
    })
};

function getById(req, res){
    var cod = req.params.id;
    editorasModels.getById(cod, function (err, resultado){
        //console.log("Dado: ", resultado[0])
        console.log("Livros Foi Lido...")
        if(err){
            throw err
        }else {
            return res.json(resultado)
        }
    })
}

function create(req, res){
    var dados = req.body;
    console.log("Adicionando Livros... ")
    console.log(req.body)
    dados.liv_codigo = 0

    editorasModels.create(dados, function(err, resultado){
        if (err){
            throw err;
        }else {
            console.log("\n")
            res.redirect('/getAll')
        }
    })
}

function update(req, res) {
    console.log("Alterando registro de livros. . . ")
    var cod = req.params.id;
    var dados = req.body;
    console.log(req.body)
    console.log("Código: "+ cod)
    editorasModels.update(dados, cod, function(err, resultado){
        if (err){
            throw err;
        }else{
            res.redirect('/')
        }
    })   
}

function remove(req, res){
    var cod = req.params.id;
    editorasModels.remove(cod, function (err, resultado){
        console.log("Livros Removido...")
        if(err){
            throw err
        }else {
            return res.json(resultado)
        }
    })
}