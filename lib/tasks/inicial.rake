  require 'rake'
  require 'faker'
#  require 'cpf_utils'
#  require 'cnpj_utils'

Faker::Config.locale = 'pt-BR'

desc "Criação do usuario admin"
task criar_super: :environment do
    # Usuário para testes
    Usuario.create(
      email:'admin@admin.com',
      matricula:'12345678',          
      nome:'administrador',               
      nascimento:DateTime.now.to_date,         
      funcao:'Técnico',             
      perfil:'administrador',             
      cnh:'A',                
      password: '12345678'
      #password_confirmation: '12345678'
      )
  end