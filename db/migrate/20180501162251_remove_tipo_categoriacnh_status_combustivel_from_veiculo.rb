class RemoveTipoCategoriacnhStatusCombustivelFromVeiculo < ActiveRecord::Migration[5.2]
  def change
    remove_column :veiculos, :tipo, :string
    remove_column :veiculos, :categoria_cnh, :string
    remove_column :veiculos, :status, :string
    remove_column :veiculos, :combustivel, :string
  end
end
