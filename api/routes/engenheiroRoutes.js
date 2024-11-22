const express = require('express');

const router = express.Router();

const controllerEngenheiro = require("../controllers/engenheiroControllers.js");

router.get("/", controllerEngenheiro.getAll);
router.get("/:id", controllerEngenheiro.getById);
router.post("/", controllerEngenheiro.create);
router.put("/:id", controllerEngenheiro.update);
router.delete("/:id", controllerEngenheiro.remove);

router.post("/listar", controllerEngenheiro.engenheiroListar);

module.exports = router