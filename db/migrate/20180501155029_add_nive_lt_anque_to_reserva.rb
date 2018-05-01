class AddNiveLtAnqueToReserva < ActiveRecord::Migration[5.2]
  def change
    add_column :reservas, :nivel_tanque, :integer
  end
end
