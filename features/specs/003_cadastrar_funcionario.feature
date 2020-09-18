#language: pt

@cadastro_funcionario
Funcionalidade: Cadastrar Funcionário
Eu como usuário do Sistema de Cadastro inmetrics
Estando logado na aplicação
Ao clicar no Link 
 -Novo Funcionário
Onde devo preenher os seguintes campos:
 - Mome
 - CPF
 - Sexo
 - Admissão
 - Cargo
 - Salário
Escolher o Tipo de contratação
 - CLT ou PJ
Finalizando a operação ao clicar no botão
 - Enviar

Contexto: Sistema Logado
Dado que esteja logado como "Alexandre" e '123'

Cenário: Cadastrar Funcionario na aplicação inmetrics
Quando informar os seguintes dados: nome "Francisco Augusto", cargo "Analista de TI", cpf "812.840.280-38",
E salário "8.000,00", sexo "Masculino" tipo de contratação "CLT" data Admissão "23/09/2020"
E clicar no botão Enviar
Entao é visualizado a smensagem "SUCESSO! Usuário cadastrado com sucesso"