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

require 'test_helper'

class LimpezaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
