class Cadastro < SitePrism::Page

    def initialize
        @acoes = Estrutura.new 
        @info_usuario = Utils.new    
    end

    def cadastrar_usuario info
        #Método responsável para cadastrar um novo usuário
        status =""
        @acoes.visualizar_menu_aplicacao info[0]
        if info[1].eql? "usuario_aleatorio"
            usuario_info = @info_usuario.gerar_usuario
            @acoes.preencher_usuario usuario_info[0]
            @acoes.preencher_senha usuario_info[1]
            @acoes.preencher_confirmar_senha usuario_info[1]
        else
            @acoes.preencher_usuario info[1]
            @acoes.preencher_senha info[2]
            @acoes.preencher_confirmar_senha info[3]
        end
           @acoes.cadastrar
        if info[1].eql? ""
            status = @acoes.mouse_hover_usuario
        elsif info[2].eql? ""
            status = @acoes.mouse_hover_senha
        elsif info[3].eql? ""
             status = @acoes.mouse_hover_confirmar_senha
        end
        status
    end

    def cadastrar_funcionario info
        #Método responsável para cadastrar um novo funcionário
        @acoes.opcao_cadastro_funcionario
        @acoes.preencher_nome info[0]
        @acoes.preencher_cargo info[1]
        @acoes.preencher_cpf info[2]
        @acoes.preencher_salario info[3]
        @acoes.selecionar_sexo info[4]
        @acoes.selecionar_contrato info[5]
        @acoes.preencher_dt_admissao info[6]
        @acoes.enviar
    end

    def pesquisar argumento
        #Método responsável para pesquisar funcionário
        @acoes.realizar_pesquisa argumento
    end

    def editar info
        #Método responsável para editar funcionário
        @acoes.editar
        @acoes.preencher_nome info[0]
        @acoes.preencher_cargo info[1]
        @acoes.preencher_cpf info[2]
        @acoes.preencher_salario info[3]
        @acoes.selecionar_sexo info[4]
        @acoes.selecionar_contrato info[5]
        @acoes.preencher_dt_admissao info[6]
        @acoes.enviar
    end

    def excluir
        #Método responsável para excluir funcionário
        @acoes.excluir
    end
end
