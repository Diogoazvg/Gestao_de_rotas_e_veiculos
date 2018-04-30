# == Schema Information
#
# Table name: servicos
#
#  id            :bigint(8)        not null, primary key
#  abastecimento :string
#  tipo          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Servico < ApplicationRecord
end
