#language: pt

@login
Funcionalidade: Login
Eu como usuário do Sitema inmetrics
Estando na tela principal da aplicação
Ao informo os dados nos campos referente a:
 - usuario e
 - senha,
Ao clicar no botão Entre
Finalizo a operação sendo direcionado a para cadastro de Funcionários

Esquema do Cenário: Realizar o Cadastro de um Usuario no Sistema inmetrics
    Dado estar na página principal da aplicação 
    Quando ao inserir o usuario '<usuário>' e '<senha>',
    E ao clicar no botão Entre
    Então sou direcionado a para cadastro de Funcionários: '<mensagem>'

Exemplos:
|usuário|senha|mensagem|
|Alexandre||Campo Obrigatório|
||123|Campo Obrigatório|
|Alexandre|456|ERRO! Usuário ou Senha inválidos|
|Alexandre|123|FUNCIONÁRIOS|


          	