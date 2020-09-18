class Login < SitePrism::Page

    def initialize
        @acoes = Estrutura.new 
    end

    def logar info
        visit " "
        status =""
        @acoes.preencher_usuario info[0]
        @acoes.preencher_senha info[1]
        @acoes.logar
        if info[0].eql? ""
            status = @acoes.mouse_hover_usuario
        elsif info[1].eql? ""
            status = @acoes.mouse_hover_senha
        end
        status
    end
end