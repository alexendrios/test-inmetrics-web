Dado('estar na página principal da aplicação ao clicar no link {string}') do |opcao|
    #setup referene ao cadastro 
    @cad = Cadastro.new
    @info_cad = []
    @info_cad[0] = opcao
end
  
Quando('ao inserir o usuario {string},') do |usuario|
    @info_cad[1] = usuario
end
  
Quando('ao informar a senha {string},') do |senha|
    @info_cad[2] = senha
end
  
Quando('ao confirmar a senha {string},') do |confirmar|
    @info_cad[3] = confirmar
    
    #Realização do Cadastro
    @Status = @cad.cadastrar_usuario @info_cad
end
  
Então('sou direcionado a página da aplicação visualizando: {string}') do |mensagem|
    if @status.eql? ""
        expect(page).to have_content mensagem 
    else 
        expect(@status).eql? mensagem
    end
end