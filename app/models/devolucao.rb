# == Schema Information
#
# Table name: devolucoes
#
#  id             :bigint(8)        not null, primary key
#  data           :integer
#  combustivel    :float
#  quilometragem  :float
#  entregou_notas :boolean
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Devolucao < ApplicationRecord
end
