#language: pt

@pesquisar_funcionario
Funcionalidade: Pesquisar Funcionário
Eu como usuário do Sistema de Cadastro inmetrics
Estando logado na aplicação
Desejo pesquisar um funcionário cadastrado no Sistema
Onde devo informar o nome do funcionário no campo
 - pesquisar
Finalizando a operação ao ao obserar as informações do Funcionário

Contexto: Sistema Logado
    Dado que esteja logado como "Alexandre" e '123'

Esquema do Cenário: Pesquisar Funcionario cadastrado na aplicacao inmetrics
    Quando informar o nome do Funcionário "<funcionario>" para realizar a busca
    Entao é visualizado a mensagem "<mensagem>"

Exemplos:
|funcionario|mensagem|
|Francisco Augusto|812.840.280-38|
|812.840.280-38|Francisco Augusto|
|Edgar Monteiro|Nenhum registro encontrado|