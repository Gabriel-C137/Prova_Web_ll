const express = require('express');

const router = express.Router();

const controllerLivros = require("../controllers/livrosControllers.js");

router.get("/", controllerLivros.getAll);
router.get("/:id", controllerLivros.getById);

console.log("Rota dos Livros");

module.exports = router