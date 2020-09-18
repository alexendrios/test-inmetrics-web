#language: pt

@cadastro_usuario
Funcionalidade: Cadastrar Usuário
Eu como usuário do Sitema inmetrics
Estando na tela principal da aplicação
Ao clicar no Link 
 - Cadastre-se
Onde sou encaminhado para a tela
- Cadastre-se
Ao preencher os campos identificado como:
 - usuário
 - senha
 - Confirme a senha
Ao clicar em cadastro
finalizo a operação sendo direcionado para tela Login

Esquema do Cenário: Realizar o Cadastro de um Usuario no Sistema inmetrics
    Dado estar na página principal da aplicação ao clicar no link '<Link>'
    Quando ao inserir o usuario '<usuário>',
    E ao informar a senha '<senha>',
    E ao confirmar a senha '<conf_senha>',
    Então sou direcionado a página da aplicação visualizando: '<mensagem>'

Exemplos:
|Link|usuário|senha|conf_senha|mensagem|
|Cadastre-se||senha|senha|Campo Obrigatório|
|Cadastre-se|Lucas_ricardo|senha||Campo Obrigatório|
|Cadastre-se|Lucas_ricardo||senha|Campo Obrigatório|
|Cadastre-se|Lucas_ricardo|senha|senhas|Senhas não combinam|
|Cadastre-se|Pedro_henrrique|Panela|Panela|Usuário já cadastrado|
|Cadastre-se|usuario_aleatorio|senha_aleatorio|conf_senha_aleatorio|Login|
            	
          	