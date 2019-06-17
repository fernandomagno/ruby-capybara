#language:pt

Funcionalidade: Login

Contexto: Página Principal
    Dado que eu acesso a página principal
    
    @logout
    Cenario: Usuario logado com sucesso       
    
        Quando eu faço o login com "eu@papito.io" e senha "123456"
        Então devo ver autenticado com sucesso
        E devo ver a seguinte mensagem "Olá, Fernando"

        Esquema do Cenario: Tentativa de login

        Quando eu faço o login com "<email>"  senha "<senha>"
        Então devo ver a mensagem "<alerta>"

        Exemplos:
        |email|senha|alerta|
        |eu@papito.io|xpto123|Senha inválida|
        |eu@papito.net|xpto123|Usuário não cadastrado|
        |eupapito.net|xpto123|Email incorreto ou ausente|
