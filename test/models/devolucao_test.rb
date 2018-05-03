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
#

require 'test_helper'

class DevolucaoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
