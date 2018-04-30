# == Schema Information
#
# Table name: reservas
#
#  id                    :bigint(8)        not null, primary key
#  data_inicial          :integer
#  quilometragem_inicial :float
#  nivel_tanque          :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

require 'test_helper'

class ReservaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
