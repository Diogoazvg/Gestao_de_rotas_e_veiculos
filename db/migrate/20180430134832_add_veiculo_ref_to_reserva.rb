class AddVeiculoRefToReserva < ActiveRecord::Migration[5.2]
  def change
    add_reference :reservas, :veiculo, foreign_key: true
  end
end
