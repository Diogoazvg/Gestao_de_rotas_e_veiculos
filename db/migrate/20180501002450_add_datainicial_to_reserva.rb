class AddDatainicialToReserva < ActiveRecord::Migration[5.2]
  def change
    add_column :reservas, :data_inicial, :date
  end
end
