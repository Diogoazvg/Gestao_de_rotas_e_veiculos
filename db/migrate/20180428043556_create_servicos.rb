class CreateServicos < ActiveRecord::Migration[5.2]
  def change
    create_table :servicos do |t|
      t.string :abastecimento
      t.string :tipo

      t.timestamps
    end
  end
end
