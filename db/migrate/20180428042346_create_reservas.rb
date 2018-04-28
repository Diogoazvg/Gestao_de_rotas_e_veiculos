class CreateReservas < ActiveRecord::Migration[5.2]
  def change
    create_table :reservas do |t|
      t.integer :data_inicial
      t.float :quilometragem_inicial
      t.string :nivel_tanque

      t.timestamps
    end
  end
end
