const express = require('express');

const router = express.Router();

const controllerIndex = require('../controllers/indexControllers');

//rota raiz do projeto
router.get('/', controllerIndex.index);
router.get('/login', controllerIndex.indexLogin);
router.get('*', controllerIndex.indexNotFound);

module.exports = router