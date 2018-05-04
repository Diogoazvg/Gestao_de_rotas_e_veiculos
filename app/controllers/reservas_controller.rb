# == Schema Information
#
# Table name: reservas
#
#  id                    :bigint(8)        not null, primary key
#  quilometragem_inicial :float
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  usuario_id            :bigint(8)
#  veiculo_id            :bigint(8)
#  data_inicial          :date
#  nivel_tanque          :integer
#  status                :string
#

class ReservasController < ApplicationController
  before_action :set_reserva, only: [:show, :edit, :update, :destroy]
  before_action :set_veiculo, except: [:show, :index, :edit, :update]

  # GET /reservas
  # GET /reservas.json
  def index
    @reservas = Reserva.all
  end

  # GET /reservas/1
  # GET /reservas/1.json
  def show
  end

  # GET /reservas/new
  def new
    @reserva = Reserva.new
  end

  # GET /reservas/1/edit
  def edit
  end

  # POST /reservas
  # POST /reservas.json
  def create

    if @veiculo.categoria_cnh == current_usuario.cnh
      @reserva = Reserva.new(reserva_params)
      @salvar = @veiculo.update(status: reserva_params[:status])

      respond_to do |format|
        if @reserva.save
          format.html { redirect_to reserva_path(@reserva), notice: 'Reserva was successfully created.' }
          format.json { render :show, status: :created, location: @reserva }
        else
          format.html { render :new }
          format.json { render json: @reserva.errors, status: :unprocessable_entity }
        end
      end

    else
      flash[:info] = "Sua categoria de CNH é diferente da necessária para dirigir esse veículo."
      redirect_to index2_path
    end
  end

  # PATCH/PUT /reservas/1
  # PATCH/PUT /reservas/1.json
  def update
    respond_to do |format|
      if @reserva.update(reserva_params)
        format.html { redirect_to @reserva, notice: 'Reserva was successfully updated.' }
        format.json { render :show, status: :ok, location: @reserva }
      else
        format.html { render :edit }
        format.json { render json: @reserva.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservas/1
  # DELETE /reservas/1.json
  def destroy
    @reserva.destroy
    respond_to do |format|
      format.html { redirect_to reservas_url, notice: 'Reserva was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reserva
      @reserva = Reserva.find(params[:id])
    end

    def set_veiculo
      @veiculo = Veiculo.find(params[:veiculo_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reserva_params
      params.require(:reserva).permit(:data_inicial, :quilometragem_inicial, :nivel_tanque, :usuario_id, :veiculo_id, :status)
    end
end
