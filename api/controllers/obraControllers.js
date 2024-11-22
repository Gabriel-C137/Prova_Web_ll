const obraModels = require("../models/obraModels.js");

module.exports = {
getAll,
getById,
create,
update,
remove,
obraListar,
}


function getAll(req, res){
    console.log("\nController - Iniciando a Leitura dos Dados das Obras da Model...\n")
    var lerObra
    console.time(lerObra)
    ObraModels.getAll(function(err, result){
        if(err){
            throw err
        }else {
            console.log("Buscar Obras na Model...")
            console.log(resultado)
            console.timeEnd(lerObra)

            return res.json(result)
        }
    })
};

function getById(req, res){
    var cod = req.params.id;
    obraModels.getById(cod, function (err, result){
        //console.log("Dado: ", resultado[0])
        console.log("Obra Foi Lido...")
        if(err){
            throw err
        }else {
            return res.json(result)
        }
    })
}

function create(req, res){
    var dados = req.body;
    console.log("Adicionando Obra... ")
    console.log(req.body)
    dados.obr_codigo = 0

    obraModels.create(dados, function(err, result){
        if (err){
            throw err;
        }else {
            console.log("\n")
            res.redirect('/getAll')
        }
    })
}

function update(req, res) {
    console.log("Alterando registro de Obras. . . ")
    var cod = req.params.id;
    var dados = req.body;
    console.log(req.body)
    console.log("Código: "+ cod)
    obraModels.update(dados, cod, function(err, result){
        if (err){
            throw err;
        }else{
            res.redirect('/')
        }
    })   
}

function remove(req, res){
    var cod = req.params.id;
    obraModels.remove(cod, function (err, result){
        console.log("Obra Removido...")
        if(err){
            throw err
        }else {
            return res.json(result)
        }
    })
}

function obraListar(req, res) {
    console.log("Controller Listar Obras")
    obraModels.listarObra(function(err, result){
        console.log("Retorno model ListarObra...")
        if (err){
            throw err
        }else{
            res.render('frm_listarObras.ejs', {
                obj_obra: result
            })
        }
    })
}