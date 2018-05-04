# == Schema Information
#
# Table name: devolucoes
#
#  id                :bigint(8)        not null, primary key
#  quilometragem     :float
#  entregou_notas    :boolean
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  data              :date
#  nivel_combustivel :float
#  veiculo_id        :bigint(8)
#  usuario_id        :bigint(8)
#  status            :string
#  reserva_id        :string
#

class Devolucao < ApplicationRecord
  belongs_to :veiculo
  belongs_to :usuario

  enum nivel_combustivel: %w(Reserva Abaixo\ de\ meio\ tanque\ Meio\ tanque Acima\ de\ meio\ tanque Completo)

  #accepts_nested_attributes_for :veiculo
end
