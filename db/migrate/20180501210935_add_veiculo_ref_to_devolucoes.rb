class AddVeiculoRefToDevolucoes < ActiveRecord::Migration[5.2]
  def change
    add_reference :devolucoes, :veiculo, foreign_key: true
  end
end
