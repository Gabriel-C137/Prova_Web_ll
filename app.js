const express = require('express');
const app = express();

const peca = require('./api/routes/pecasRoutes');
const index = require('./api/routes/indexRoutes');

app.use(express.json())

app.set('view engine', 'ejs');
app.set('views', './api/views');

// configurar diretorio estatico
app.use('static', express.static(__dirname + '/public'));
app.use(express.static('public'));
app.use(express.static('estilos'));
app.use(express.static('imagens'));
app.use(express.static('js'));

const port = 3000;

app.use('/peca', peca);
app.use("/", index);

//servidor rodando
app.listen(port, () => {
    console.log(`Aplicativo Rodando na Porta ${port}`);
})


const conexao = require("./api/config/conexao");
module.exports = app;