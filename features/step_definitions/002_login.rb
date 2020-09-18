Dado('estar na página principal da aplicação') do
   #Setup
   @cad = Login.new
   @info_cad = []
end

Quando('ao inserir o usuario {string} e {string},') do |usuario, senha|  
    @info_cad[0] = usuario
    @info_cad[1] = senha
end
  
Quando('ao clicar no botão Entre') do
    #realizando o Login
    @status = @cad.logar @info_cad
end
  
Então('sou direcionado a para cadastro de Funcionários: {string}') do |mensagem |
    if @status.eql? ""
        expect(page).to have_content mensagem 
    else 
        expect(@status).eql? mensagem
    end
end