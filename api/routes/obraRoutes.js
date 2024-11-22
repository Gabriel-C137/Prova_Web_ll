const express = require('express');

const router = express.Router();

const controllerObra = require("../controllers/obraControllers.js");

router.get("/", controllerObra.getAll);
router.get("/:id", controllerObra.getById);
router.post("/", controllerObra.create);
router.put("/:id", controllerObra.update);
router.delete("/:id", controllerObra.remove);

router.post("/listar", controllerObra.obraListar);

module.exports = router