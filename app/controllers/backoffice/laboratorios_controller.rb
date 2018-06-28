# frozen_string_literal: true

module Backoffice
  class LaboratoriosController < AdminApplication
    before_action :authenticate_usuario!
    before_action :set_laboratorio, only: [:show, :edit, :update, :destroy]
    before_action :set_predio

    def index
      @laboratorios = Laboratorio.all
      authorize @laboratorios
    end

    def show
      authorize @laboratorio
    end

    def new
      @laboratorio = @predio.laboratorios.build
      authorize @laboratorio
    end

    def edit; end

    def create
      @laboratorio = @predio.laboratorios.build(laboratorio_params)
      authorize @laboratorio

      respond_to do |format|
        if @laboratorio.save
          format.html { redirect_to [:backoffice, @predio, @laboratorio], notice: 'Laboratorio foi cadastrado com sucesso.' }
        else
          format.html { render :new }
        end
      end
    end

    def update
      authorize @laboratorio
      respond_to do |format|
        if @laboratorio.update(laboratorio_params)
          format.html { redirect_to [:backoffice, @predio, @laboratorio], notice: 'Laboratorio foi atualizado com sucesso.' }
        else
          format.html { render :edit }
        end
      end
    end

    def destroy
      authorize @laboratorio
      @laboratorio.destroy
      respond_to do |format|
        format.html { redirect_to backoffice_predio_laboratorios_url, notice: 'Laboratorio foi excluido com sucesso.' }
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_laboratorio
      @laboratorio = Laboratorio.find(params[:id])
    end

    def set_predio
      @predio = Predio.find(params[:predio_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def laboratorio_params
      params.require(:laboratorio).permit(:nome, :acronimo)
    end
  end
end
