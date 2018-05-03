class RemoveCombustivelDataFromDevolucao < ActiveRecord::Migration[5.2]
  def change
    remove_column :devolucoes, :data, :integer
    remove_column :devolucoes, :combustivel, :float
  end
end
