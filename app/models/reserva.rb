# == Schema Information
#
# Table name: reservas
#
#  id                    :bigint(8)        not null, primary key
#  quilometragem_inicial :float
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  usuario_id            :bigint(8)
#  veiculo_id            :bigint(8)
#  data_inicial          :date
#  nivel_tanque          :integer
#

class Reserva < ApplicationRecord
  belongs_to :usuario
  belongs_to :veiculo

  enum nivel_tanque: %w(Reserva Abaixo\ de\ meio\ tanque\ Meio\ tanque Acima\ de\ meio\ tanque Completo)
end
