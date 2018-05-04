# == Schema Information
#
# Table name: manutencoes
#
#  id         :bigint(8)        not null, primary key
#  data       :integer
#  valor      :float
#  detalhes   :string
#  previsao   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  veiculo_id :bigint(8)
#

class ManutencoesController < ApplicationController
  before_action :set_manutencao, only: [:show, :edit, :update, :destroy]
  before_action :set_veiculo, only: [:index, :new, :edit, :destroy, :show]

  # GET /manutencoes
  # GET /manutencoes.json
  def index
    @manutencoes = Manutencao.all
  end

  # GET /manutencoes/1
  # GET /manutencoes/1.json
  def show
  end

  # GET /manutencoes/new
  def new
    @manutencao = Manutencao.new
  end

  # GET /manutencoes/1/edit
  def edit
  end

  # POST /manutencoes
  # POST /manutencoes.json
  def create
    @manutencao = Manutencao.new(manutencao_params)
    # @manutencao = manutencao_params([:veiculo_id])

    respond_to do |format|
      if @manutencao.save
        format.html { redirect_to @manutencao, notice: 'Manutencao was successfully created.' }
        format.json { render :show, status: :created, location: @manutencao }
      else
        format.html { render :new }
        format.json { render json: @manutencao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manutencoes/1
  # PATCH/PUT /manutencoes/1.json
  def update
    respond_to do |format|
      if @manutencao.update(manutencao_params)
        format.html { redirect_to @manutencao, notice: 'Manutencao was successfully updated.' }
        format.json { render :show, status: :ok, location: @manutencao }
      else
        format.html { render :edit }
        format.json { render json: @manutencao.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # DELETE /manutencoes/1
  # DELETE /manutencoes/1.json
  def destroy
    @manutencao.destroy
    respond_to do |format|
      format.html { redirect_to veiculo_manutencoes_path(@veiculo), notice: 'Manutencao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manutencao
      @manutencao = Manutencao.find(params[:id])
    end
    
    def set_veiculo
      @veiculo = Veiculo.find(params[:veiculo_id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def manutencao_params
      params.require(:manutencao).permit(:data, :valor, :detalhes, :previsao, :veiculo_id)
    end
end
