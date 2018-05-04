# == Schema Information
#
# Table name: limpezas
#
#  id         :bigint(8)        not null, primary key
#  data       :integer
#  valor      :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  veiculo_id :bigint(8)
#

class Limpeza < ApplicationRecord
  belongs_to :veiculo
end
