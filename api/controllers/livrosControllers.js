const livrosModels = require("../models/livrosModels.js");

module.exports = {
getAll,
getById,
create,
update,
remove,
livrosListar,
}


function getAll(req, res){
    console.log("\nController - Iniciando a Leitura dos Dados dos Livros da Model...\n")
    var lerLivros
    console.time(lerLivros)
    livrosModels.getAll(function(err, result){
        if(err){
            throw err
        }else {
            console.log("Buscar Livros na Model...")
            console.log(resultado)
            console.timeEnd(lerLivros)

            return res.json(result)
        }
    })
};

function getById(req, res){
    var cod = req.params.id;
    livrosModels.getById(cod, function (err, result){
        //console.log("Dado: ", resultado[0])
        console.log("Livros Foi Lido...")
        if(err){
            throw err
        }else {
            return res.json(result)
        }
    })
}

function create(req, res){
    var dados = req.body;
    console.log("Adicionando Livros... ")
    console.log(req.body)
    dados.liv_codigo = 0

    livrosModels.create(dados, function(err, result){
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
    livrosModels.update(dados, cod, function(err, result){
        if (err){
            throw err;
        }else{
            res.redirect('/')
        }
    })   
}

function remove(req, res){
    var cod = req.params.id;
    livrosModels.remove(cod, function (err, result){
        console.log("Livros Removido...")
        if(err){
            throw err
        }else {
            return res.json(result)
        }
    })
}

function livrosListar(req, res) {
    console.log("Controller Listar Livros")
    livrosModels.listarLivros(function(err, result){
        console.log("Retorno model ListarLivros...")
        if (err){
            throw err
        }else{
            res.render('frm_listarLivros.ejs', {
                obj_livros: result
            })
        }
    })
}