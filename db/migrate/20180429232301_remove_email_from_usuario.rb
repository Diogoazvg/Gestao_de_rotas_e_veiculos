class RemoveEmailFromUsuario < ActiveRecord::Migration[5.2]
  def change
    remove_column :usuarios, :email, :string
  end
end
