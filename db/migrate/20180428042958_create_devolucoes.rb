class CreateDevolucoes < ActiveRecord::Migration[5.2]
  def change
    create_table :devolucoes do |t|
      t.integer :data
      t.float :combustivel
      t.float :quilometragem
      t.boolean :entregou_notas

      t.timestamps
    end
  end
end
