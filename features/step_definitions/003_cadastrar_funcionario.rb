Dado('que esteja logado como {string} e {string}') do |usuario, senha|                                                              
    #setup
    login = Login.new
    dados_login = [usuario, senha]
    login.logar dados_login                                                     
end                                                                                                                                  
                                                                                                                                       
Quando('informar os seguintes dados: nome {string}, cargo {string}, cpf {string},') do |funcionario, cargp, cpf|                 
    @cad = Cadastro.new
    @funcionario_dados = [funcionario, cargp, cpf]                                                   
end                                                                                                                                  
                                                                                                                                       
Quando('salário {string}, sexo {string} tipo de contratação {string} data Admissão {string}') do |salario, sexo, contrato, dt_admissao| 
    @funcionario_dados[3] = salario
    @funcionario_dados[4] = sexo
    @funcionario_dados[5] = contrato
    @funcionario_dados[6] = dt_admissao
end                                                                                                                                  
                                                                                                                                       
Quando('clicar no botão Enviar') do                                                                                               
    @cad.cadastrar_funcionario @funcionario_dados                                                   
end                                                                                                                                  
                                                                                                                                       
Entao('é visualizado a smensagem {string}') do |mensagem|                                                                              
    expect(page).to have_content mensagem                                                        
end                                                                                                                                  
