class AddVeiculoRefToManutencao < ActiveRecord::Migration[5.2]
  def change
    add_reference :manutencoes, :veiculo, foreign_key: true
  end
end
