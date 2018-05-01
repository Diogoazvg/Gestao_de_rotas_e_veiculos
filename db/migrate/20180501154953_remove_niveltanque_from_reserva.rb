class RemoveNiveltanqueFromReserva < ActiveRecord::Migration[5.2]
  def change
    remove_column :reservas, :nivel_tanque, :string
  end
end
