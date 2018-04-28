class CreateVeiculos < ActiveRecord::Migration[5.2]
  def change
    create_table :veiculos do |t|
      t.string :marca
      t.string :modelo
      t.integer :ano
      t.string :placa
      t.string :tipo
      t.string :categoria_cnh
      t.string :status
      t.float :quilometragem
      t.string :combustivel

      t.timestamps
    end
  end
end
