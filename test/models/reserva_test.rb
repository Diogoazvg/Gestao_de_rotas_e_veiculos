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
#  status                :string
#

require 'test_helper'

class ReservaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
