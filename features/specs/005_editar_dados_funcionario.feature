#language: pt

@editar_funcionario
Funcionalidade: Editar Funcionário
Eu como usuário do Sistema de Cadastro inmetrics
Estando logado na aplicação
Desejo pesquisar um funcionário cadastrado no Sistema
Onde devo informar o nome do funcionário no campo
 - pesquisar
Ao esolher a opção editar
Finalizando a operação editando as informações

Contexto: Sistema Logado
    Dado que esteja logado como "Alexandre" e '123'

Cenário: Editar Funcionario cadastrado na aplicacao inmetrics
    Quando informar o nome do Funcionário "812.840.280-38" para realizar a busca
    E informar os seguintes dados: nome "Francisco Luiz Augusto", cargo "Analista de TI", cpf "812.840.280-38",
    E salário "8.000,00", sexo "Masculino" tipo de contratação "CLT" data Admissão "23/09/2020"
    E ao clicar no botão Eviar, com o intuito de realizar a edição
    Entao é visualizado a smensagem "SUCESSO! Informações atualizadas com sucesso"

