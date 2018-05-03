class AddCombustivelDataToDevolucao < ActiveRecord::Migration[5.2]
  def change
    add_column :devolucoes, :data, :date
    add_column :devolucoes, :nivel_combustivel, :float
  end
end
