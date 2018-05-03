# == Schema Information
#
# Table name: veiculos
#
#  id            :bigint(8)        not null, primary key
#  marca         :string
#  modelo        :string
#  ano           :integer
#  placa         :string
#  quilometragem :float
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  tipo          :integer
#  categoria_cnh :integer
#  status        :integer
#  combustivel   :integer
#  combustivel2  :integer
#

class Veiculo < ApplicationRecord
  has_one :reserva
  has_many :devolucoes
  has_many :limpezas
  has_many :abastecimentos
  has_many :manutencoes

  enum tipo: %w(Carro Moto Caminhão)
  enum categoria_cnh: %w(A B C D E)
  enum status: %w(Disponível Indisponível Em\ manutenção Desativado)
  enum combustivel: %w(Gasolina Ácool Diesel Gás), _suffix: true
  enum combustivel2: %w(Gasolina Ácool Diesel Gás)
end
