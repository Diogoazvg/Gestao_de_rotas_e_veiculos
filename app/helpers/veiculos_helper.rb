# == Schema Information
#
# Table name: veiculos
#
#  id            :bigint(8)        not null, primary key
#  marca         :string
#  modelo        :string
#  ano           :integer
#  placa         :string
#  string        :string           default("Disponível")
#  quilometragem :float
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  tipo          :integer
#  categoria_cnh :integer
#  status        :integer
#  combustivel   :integer
#  combustivel2  :integer
#

module VeiculosHelper
end
