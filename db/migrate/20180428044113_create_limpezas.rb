class CreateLimpezas < ActiveRecord::Migration[5.2]
  def change
    create_table :limpezas do |t|
      t.integer :data
      t.float :valor

      t.timestamps
    end
  end
end
