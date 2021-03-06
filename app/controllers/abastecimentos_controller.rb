# == Schema Information
#
# Table name: abastecimentos
#
#  id         :bigint(8)        not null, primary key
#  data       :date
#  valor      :float
#  litros     :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  veiculo_id :bigint(8)
#

class AbastecimentosController < ApplicationController
  before_action :set_abastecimento, only: [:show, :edit, :update, :destroy]

  # GET /abastecimentos
  # GET /abastecimentos.json
  def index
    @abastecimentos = Abastecimento.all
  end

  # GET /abastecimentos/1
  # GET /abastecimentos/1.json
  def show
  end

  # GET /abastecimentos/new
  def new
    @abastecimento = Abastecimento.new
  end

  # GET /abastecimentos/1/edit
  def edit
  end

  # POST /abastecimentos
  # POST /abastecimentos.json
  def create
    @abastecimento = Abastecimento.new(abastecimento_params)

    respond_to do |format|
      if @abastecimento.save
        format.html { redirect_to @abastecimento, notice: 'Abastecimento was successfully created.' }
        format.json { render :show, status: :created, location: @abastecimento }
      else
        format.html { render :new }
        format.json { render json: @abastecimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abastecimentos/1
  # PATCH/PUT /abastecimentos/1.json
  def update
    respond_to do |format|
      if @abastecimento.update(abastecimento_params)
        format.html { redirect_to @abastecimento, notice: 'Abastecimento was successfully updated.' }
        format.json { render :show, status: :ok, location: @abastecimento }
      else
        format.html { render :edit }
        format.json { render json: @abastecimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abastecimentos/1
  # DELETE /abastecimentos/1.json
  def destroy
    @abastecimento.destroy
    respond_to do |format|
      format.html { redirect_to abastecimentos_url, notice: 'Abastecimento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_abastecimento
      @abastecimento = Abastecimento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def abastecimento_params
      params.require(:abastecimento).permit(:data, :valor, :litros)
    end
end
