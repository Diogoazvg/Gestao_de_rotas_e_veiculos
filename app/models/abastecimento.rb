# == Schema Information
#
# Table name: abastecimentos
#
#  id         :bigint(8)        not null, primary key
#  data       :date
#  valor      :float
#  litros     :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  veiculo_id :bigint(8)
#

class Abastecimento < ApplicationRecord
  belongs_to :veiculo
end
