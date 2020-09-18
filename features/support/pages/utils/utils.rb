class Utils
    def gerar_usuario
       usuario = Faker::Name.name 
       senha  = Faker::Internet.password
       return usuario, senha  
    end 
end