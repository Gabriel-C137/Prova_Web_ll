const express = require('express');

const router = express.Router();

const controllerLivros = require("../controllers/livrosControllers.js");

router.get("/", controllerLivros.getAll);
router.get("/:id", controllerLivros.getById);
router.post("/", controllerLivros.create);
router.put("/:id", controllerLivros.update);
router.delete("/:id", controllerLivros.remove);

router.post("/listar", controllerLivros.livrosListar);

module.exports = router