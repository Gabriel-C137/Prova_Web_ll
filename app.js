const express = require('express');
const app = express();

const livrosRoutes = require("./api/routes/livrosRoutes");
const peca = require('./api/routes/pecasRoutes');
const loginRoutes = require('./api/routes/loginRoutes');
const obraRoutes = require('./api/routes/obraRoutes');
const engenheiroRoutes = require('./api/routes/engenheiroRoutes');

app.use(express.json())
app.use(express.urlencoded({extended: true}))

app.set('view engine', 'ejs');
app.set('views', './api/views');

// configurar diretorio estatico
app.use('static', express.static(__dirname + '/public'));
app.use(express.static('public'));
app.use(express.static('estilos'));
app.use(express.static('imagens'));
app.use(express.static('js'));

const port = 3000;

app.use("/", loginRoutes);
app.use("/livros", livrosRoutes);
app.use("/peca", peca);
app.use("/engenheiro", engenheiroRoutes);
app.use("/obra", obraRoutes);

//servidor rodando
app.listen(port, () => {
    console.log(`Aplicativo Rodando na Porta ${port}`);
})


//const conexao = require("./api/config/conexao");

module.exports = app;