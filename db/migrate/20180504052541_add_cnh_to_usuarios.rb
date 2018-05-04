class AddCnhToUsuarios < ActiveRecord::Migration[5.2]
  def change
    add_column :usuarios, :cnh, :integer
  end
end
