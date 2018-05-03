class AddStatusToDevolucao < ActiveRecord::Migration[5.2]
  def change
    add_column :devolucoes, :status, :string
  end
end
