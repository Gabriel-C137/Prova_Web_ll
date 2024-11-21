const express = require('express');

const router = express.Router();

const controllerAutoras = require("../controllers/autorasControllers.js");

router.get("/", controllerAutoras.getAll);
router.get("/:id", controllerAutoras.getById);
router.post("/", controllerAutoras.create);
router.put("/:id", controllerAutoras.update);
router.delete("/:id", controllerAutoras.remove);

console.log("Rota das Autoras");

module.exports = router