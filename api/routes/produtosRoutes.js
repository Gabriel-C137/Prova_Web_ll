const express = require('express');

const router = express.Router();

const controllerPecas = require("../controllers/pecasControllers");

router.get("/",controllerPecas.getAll);
///router.get('/edit', controllerProdutos.getEdit);
///router.get('/delete',controllerAlunos.getDelete);
///router.get('/sobre',controllerPecas.getSobre);
///router.get("/:cod", controllerPecas.getCod);
router.get("/editar/:cod", controllerPecas.getId);

router.get("*", function (req, res) {
    //console.log('Página não Encontrada - 404');
    res.send('<h3>Página Não Encontrada!</h3><p> Erro 404</p>')
})

module.exports = router