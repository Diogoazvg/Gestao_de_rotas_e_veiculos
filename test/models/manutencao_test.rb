# == Schema Information
#
# Table name: manutencoes
#
#  id         :bigint(8)        not null, primary key
#  data       :integer
#  valor      :float
#  detalhes   :string
#  previsao   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  veiculo_id :bigint(8)
#

require 'test_helper'

class ManutencaoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
