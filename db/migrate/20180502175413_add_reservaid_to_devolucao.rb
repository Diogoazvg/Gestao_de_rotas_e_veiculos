class AddReservaidToDevolucao < ActiveRecord::Migration[5.2]
  def change
    add_column :devolucoes, :reserva_id, :string
  end
end
