class Estrutura < SitePrism::Page

 def initialize
    #Mapeamentos dos elementos WEB

    #tela principal
    @cadastro_usuario = '//*[@id="navbarSupportedContent"]/ul/li[1]/a'
    @login = '//*[@id="navbarSupportedContent"]/ul/li[2]/a'

    #Mapeamentos dos Imputs

    #tela principal
    @input_usuario = ".input100[name='username']"
    @input_senha = ".input100[name='pass']"
    @input_confirmar_senha = ".input100[name='confirmpass']"

    #tela cadastro NOVOFUNCIONÁRIO
    @input_nome = "#inputNome"
    @input_cargo = "#inputCargo"
    @input_cpf = "#cpf"
    @input_salario = "#dinheiro"
    @input_dt_admissao = "#inputAdmissao"
    @inout_radio_clt = "#clt"
    @inout_radio_pj = "#pj"
    @button_enviar = "input.cadastrar-form-btn"

    #tela principal após efetuar o Login
    @input_pesquisa = '#tabela_filter > label > input[type=search]'
    @buttom_editar = '#tabela > tbody > tr:nth-child(1) > td:nth-child(6) > a:nth-child(2)'
    @buttom_excluir = '#tabela > tbody > tr > td:nth-child(6) > a:nth-child(1)'
 end

  #Menus
  def visualizar_menu_aplicacao opcao
    visit ' '
     case opcao
        when "Cadastre-se"
            find(:xpath,@cadastro_usuario).click
        when "Login"
            find(:xpath, @login).click
     end
  end

 def opcao_cadastro_funcionario
    click_link 'Novo Funcionário'
 end

  #Forms
  def preencher_usuario nome
    find(@input_usuario).set nome
  end

  def preencher_senha senha 
    find(@input_senha).set senha
  end

  def preencher_confirmar_senha confirma 
    find(@input_confirmar_senha).set confirma 
  end

  def preencher_nome nome
    find(@input_nome).set nome
  end

  def preencher_cargo cargo
    find(@input_cargo).set cargo
  end

  def preencher_cpf cpf
    find(@input_cpf).set cpf
  end

  def preencher_salario salario
    find(@input_salario).set salario
  end

  def preencher_dt_admissao dt_admissao
    find(@input_dt_admissao).set dt_admissao
  end

  def realizar_pesquisa argumento
    find(@input_pesquisa).set argumento
  end

  #select
  def selecionar_sexo sexo
    select sexo, :from => "slctSexo"
  end

  def selecionar_contrato contrato
    if contrato.eql? "CLT"
      find(@inout_radio_clt).set true
    else
      find(@inout_radio_pj).set true
    end
  end

  #botões
  def cadastrar
    click_button 'Cadastrar'
  end

  def logar
    click_button "Entre"
  end

  def enviar
    find(@button_enviar).click
  end

  def editar 
    find(@buttom_editar).click
  end

  def excluir
    find(@buttom_excluir).click
  end

  #Ações mouse hover
  def mouse_hover_usuario
    status = ""
    find(@input_usuario).hover
    if page.has_css? "body > div > div > div > form > div.wrap-input100.validate-input.alert-validate"
        status = "Campo Obrigatório"
    end
    status
  end

  def mouse_hover_senha
    find(@input_senha).hover
    if page.has_css? "body > div > div > div > form > div.wrap-input100.validate-input.alert-validate"
        status = "Campo Obrigatório"
    end
    status
  end

  def mouse_hover_confirmar_senha
    find(@input_confirmar_senha).hover
    if page.has_css? "body > div > div > div > form > div.wrap-input100.validate-input.alert-validate"
        status = "Campo Obrigatório"
    end
    status
  end
end