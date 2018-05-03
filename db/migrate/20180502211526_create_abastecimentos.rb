class CreateAbastecimentos < ActiveRecord::Migration[5.2]
  def change
    create_table :abastecimentos do |t|
      t.date :data
      t.float :valor
      t.float :litros

      t.timestamps
    end
  end
end
