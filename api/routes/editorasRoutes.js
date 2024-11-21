const express = require('express');

const router = express.Router();

const controllerEditoras = require("../controllers/editorasControllers.js");

router.get("/", controllerEditoras.getAll);
router.get("/:id", controllerEditoras.getById);
router.post("/", controllerEditoras.create);
router.put("/:id", controllerEditoras.update);
router.delete("/:id", controllerEditoras.remove);

console.log("Rota das Editoras");

module.exports = router