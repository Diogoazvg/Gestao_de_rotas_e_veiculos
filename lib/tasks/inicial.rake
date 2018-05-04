  require 'rake'
  require 'faker'
#  require 'cpf_utils'
#  require 'cnpj_utils'

Faker::Config.locale = 'pt-BR'

desc "Criação do usuario admin"
task inicial: :environment do
    # Usuário para testes
    Usuario.create(
      email:'admin@admin.com',
      matricula:'12345678',          
      nome:'Administrador',               
      nascimento:DateTime.now.to_date,         
      funcao: %w(Técnico Gerente Motorista).sample,             
      perfil: %w(Atendente Gerente_ Administrador).sample,             
      cnh:'A',                
      password: '12345678',
      password_confirmation: '12345678'
      )

    Usuario.create(
      email:'Atendente@atendente.com',
      matricula:'12345678',          
      nome:'atendente',               
      nascimento:DateTime.now.to_date,         
      funcao: %w(Técnico Gerente Motorista).sample,             
      perfil: %w(Atendente Gerente_ Administrador).sample,             
      cnh:'B',                
      password: '23456789',
      password_confirmation: '12345678'
      )
500.times do
    Usuario.create(
      email:Faker::Internet.email,
      matricula:'87654321',          
      nome:Faker::Name.unique.name,               
      nascimento:DateTime.now.to_date,         
      funcao: %w(Técnico Gerente Motorista).sample,             
      perfil: %w(Atendente Gerente_ Administrador).sample,             
      cnh:'A',                
      password: '12345678',
      password_confirmation: '12345678'
      )
  end
5000.times do
    Veiculo.create(
      marca:'VW',         
      modelo:Faker::Vehicle.manufacture,       
      ano: 2018,        
      placa:Faker::Vehicle.vin,        
      quilometragem: 200,    
      tipo: %w(Carro Moto Caminhão).sample,          
      categoria_cnh: %w(A B C D E).sample,
      status: %w(Disponível Indisponível Em\ manutenção Desativado).sample,      
      combustivel: %w(Gasolina Ácool Diesel Gás).sample, 
      combustivel2: %w(Gasolina Ácool Diesel Gás).sample
      )
  end
  end