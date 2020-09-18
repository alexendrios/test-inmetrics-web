Quando('informar o nome do Funcionário {string} para realizar a busca') do |funcionario| 
    @pesquisa = Cadastro.new
    @pesquisa.pesquisar funcionario 
end                                                                                 
                                                                                
Entao('é visualizado a mensagem {string}') do |mensagem|                        
    expect(page).to have_content mensagem   
end                                                                           
                                                                                