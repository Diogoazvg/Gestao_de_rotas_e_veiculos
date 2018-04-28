class CreateManutencoes < ActiveRecord::Migration[5.2]
  def change
    create_table :manutencoes do |t|
      t.integer :data
      t.float :valor
      t.string :detalhes
      t.integer :previsao

      t.timestamps
    end
  end
end
