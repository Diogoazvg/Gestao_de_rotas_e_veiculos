class AddUsuarioRefdevolucoes < ActiveRecord::Migration[5.2]
  def change
    add_reference :devolucoes, :usuario, foreign_key: true
  end
end
