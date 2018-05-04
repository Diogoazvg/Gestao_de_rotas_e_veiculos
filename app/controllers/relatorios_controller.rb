class RelatoriosController < ApplicationController

  def relatorio3
    @veiculos = Veiculo.all
  end

end