class AddCombustivel2ToVeiculo < ActiveRecord::Migration[5.2]
  def change
    add_column :veiculos, :combustivel2, :integer
  end
end
