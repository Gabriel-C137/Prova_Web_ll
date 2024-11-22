const engenheiroModels = require("../models/engenheiroModels.js");

module.exports = {
getAll,
getById,
create,
update,
remove,
engenheiroListar,
}


function getAll(req, res){
    console.log("\nController - Iniciando a Leitura dos Dados dos Engenheiros da Model...\n")
    var lerEngenheiro
    console.time(lerEngenheiro)
    engenheiroModels.getAll(function(err, result){
        if(err){
            throw err
        }else {
            console.log("Buscar Engenheiro na Model...")
            console.log(resultado)
            console.timeEnd(lerEngenheiro)

            return res.json(result)
        }
    })
};

function getById(req, res){
    var cod = req.params.id;
    engenheiroModels.getById(cod, function (err, result){
        //console.log("Dado: ", resultado[0])
        console.log("Engenheiros Foi Lido...")
        if(err){
            throw err
        }else {
            return res.json(result)
        }
    })
}

function create(req, res){
    var dados = req.body;
    console.log("Adicionando Engenheiro... ")
    console.log(req.body)
    dados.eng_codigo = 0

    engenheiroModels.create(dados, function(err, result){
        if (err){
            throw err;
        }else {
            console.log("\n")
            res.redirect('/getAll')
        }
    })
}

function update(req, res) {
    console.log("Alterando registro de engenheiro. . . ")
    var cod = req.params.id;
    var dados = req.body;
    console.log(req.body)
    console.log("Código: "+ cod)
    engenheiroModels.update(dados, cod, function(err, result){
        if (err){
            throw err;
        }else{
            res.redirect('/')
        }
    })   
}

function remove(req, res){
    var cod = req.params.id;
    engenheiroModels.remove(cod, function (err, result){
        console.log("Engenheiro Removido...")
        if(err){
            throw err
        }else {
            return res.json(result)
        }
    })
}

function engenheiroListar(req, res) {
    console.log("Controller Listar Engenheiro")
    engenheiroModels.listarEngenheiro(function(err, result){
        console.log("Retorno model ListarEngenheiro...")
        if (err){
            throw err
        }else{
            res.render('frm_listarEngenheiros.ejs', {
                obj_engenheiro: result
            })
        }
    })
}