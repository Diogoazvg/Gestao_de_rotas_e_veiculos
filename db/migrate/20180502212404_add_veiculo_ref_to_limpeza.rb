class AddVeiculoRefToLimpeza < ActiveRecord::Migration[5.2]
  def change
    add_reference :limpezas, :veiculo, foreign_key: true
  end
end
