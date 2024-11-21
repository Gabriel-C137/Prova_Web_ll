const loginModels = require("../models/loginModels.js")

module.exports = {
    login,
    validarPSW
}

function login(req, res) {
    console.log("Carregando Página de Login")
    res.render("login.ejs", {
        title: "Login",
        mensagem: "Senha do Usuário"
    })
}

function validarPSW(req, res) {
    console.log("Controller Validar Login...")
    m_usuario = req.body.login;
    m_senha = req.body.senha;
    console.log("Usuário: "+ m_usuario)
    console.log("Senha: "+ m_senha)

    loginModels.validarPSW(m_usuario, m_senha, function(erro, result){
        if(erro){
            throw erro
        }

        if(result.length>0){
            console.log("Dados Válidos")
            res.render("index.ejs", {
                title: "Menu PI"
            });
        } else {
            console.log("Dados Inválidos")
            res.render("login.ejs", {
                title: "Login",
                mensagem: "Dados Inválidos"
            })
        }
    })
}

