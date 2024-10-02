const express = require('express');

const router = express.Router();

const controllerLivros = require("../controllers/livrosControllers.js");

router.get("/", controllerLivros.getAll);

console.log("Rota dos Livros");

module.exports = router