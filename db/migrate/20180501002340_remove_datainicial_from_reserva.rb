class RemoveDatainicialFromReserva < ActiveRecord::Migration[5.2]
  def change
    remove_column :reservas, :data_inicial, :integer
  end
end
