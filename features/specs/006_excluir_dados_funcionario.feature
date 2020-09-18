#language: pt

@excluir_funcionario
Funcionalidade: Excluir Funcionário
Eu como usuário do Sistema de Cadastro inmetrics
Estando logado na aplicação
Desejo pesquisar um funcionário cadastrado no Sistema
Onde devo informar o nome do funcionário no campo
 - pesquisar
Ao esolher a opção excluir
Finalizando a operação excluindo o funcionário do sistema

Contexto: Sistema Logado
    Dado que esteja logado como "Alexandre" e '123'

Cenário: Excluir Funcionario cadastrado na aplicacao inmetrics
    Quando informar o nome do Funcionário "812.840.280-38" para realizar a busca
    E ao clicar no botão Eviar, com o intuito de realizar a wxclusão dos dados
    Entao é visualizado a smensagem "SUCESSO! Funcionário removido com sucesso"

