class AddTipoCategoriacnhStatusCombustivelToVeiculo < ActiveRecord::Migration[5.2]
  def change
    add_column :veiculos, :tipo, :integer
    add_column :veiculos, :categoria_cnh, :integer
    add_column :veiculos, :status, :integer
    add_column :veiculos, :combustivel, :integer
  end
end
