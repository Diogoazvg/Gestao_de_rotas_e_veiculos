# == Schema Information
#
# Table name: veiculos
#
#  id            :bigint(8)        not null, primary key
#  marca         :string
#  modelo        :string
#  ano           :integer
#  placa         :string
#  string        :string           default("Disponível")
#  quilometragem :float
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  tipo          :integer
#  categoria_cnh :integer
#  status        :integer
#  combustivel   :integer
#  combustivel2  :integer
#

class VeiculosController < ApplicationController
  before_action :set_veiculo, only: [:show, :edit, :update, :destroy, :relatorio_veiculo3]

  # GET /veiculos
  # GET /veiculos.json
  def index
    @veiculos = Veiculo.all
  end

  def index2
    @veiculos = Veiculo.all 
  end

  def relatorio_veiculo3
    
  end

  # GET /veiculos/1
  # GET /veiculos/1.json
  def show
  end

  # GET /veiculos/new
  def new
    @veiculo = Veiculo.new
  end

  # GET /veiculos/1/edit
  def edit
  end

  # POST /veiculos
  # POST /veiculos.json
  def create
    @veiculo = Veiculo.new(veiculo_params)

    respond_to do |format|
      if @veiculo.save
        format.html { redirect_to @veiculo, notice: 'Veiculo was successfully created.' }
        format.json { render :show, status: :created, location: @veiculo }
      else
        format.html { render :new }
        format.json { render json: @veiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /veiculos/1
  # PATCH/PUT /veiculos/1.json
  def update
    respond_to do |format|
      if @veiculo.update(veiculo_params)
        format.html { redirect_to @veiculo, notice: 'Veiculo was successfully updated.' }
        format.json { render :show, status: :ok, location: @veiculo }
      else
        format.html { render :edit }
        format.json { render json: @veiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /veiculos/1
  # DELETE /veiculos/1.json
  def destroy
    begin
    @veiculo.destroy
    rescue ActiveRecord::StatementInvalid
      respond_to do |format|
        format.html { redirect_to veiculos_url }
        flash[:error] = "Não é possível apagar esse veículo, pois ele está reservado."  
      end   
    else
      respond_to do |format|
        format.html { redirect_to veiculos_url, notice: 'Veiculo was successfully destroyed.' }
        format.json { head :no_content }
      end
    end 
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_veiculo
      @veiculo = Veiculo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def veiculo_params
      params.require(:veiculo).permit(:marca, :modelo, :ano, :placa, :tipo, :categoria_cnh, :status, :quilometragem, :combustivel, :combustivel2)
    end
end
