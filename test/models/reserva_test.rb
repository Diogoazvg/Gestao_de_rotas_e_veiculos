# == Schema Information
#
# Table name: reservas
#
#  id                    :bigint(8)        not null, primary key
#  quilometragem_inicial :float
#  nivel_tanque          :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  usuario_id            :bigint(8)
#  veiculo_id            :bigint(8)
#  data_inicial          :date
#

require 'test_helper'

class ReservaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
