class AddVeiculoRefToAbastecimento < ActiveRecord::Migration[5.2]
  def change
    add_reference :abastecimentos, :veiculo, foreign_key: true
  end
end
