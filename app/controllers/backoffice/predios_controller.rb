# frozen_string_literal: true

module Backoffice
  class PrediosController < AdminApplication
    before_action :authenticate_usuario!
    before_action :set_predio, only: [:show, :edit, :update, :destroy]

    def index
      @predios = Predio.all
    end

    def show; end

    def new
      @predio = Predio.new
      authorize @predio
    end

    def edit
      authorize @predio
    end

    def create
      @predio = Predio.new(predio_params)
      authorize @predio

      respond_to do |format|
        if @predio.save
          format.html { redirect_to [:backoffice, @predio], notice: 'O prédio foi cadastrado com sucesso' }
        else
          format.html { render :new }
        end
      end
    end

    def update
      authorize @predio
      respond_to do |format|
        if @predio.update(predio_params)
          format.html { redirect_to [:backoffice, @predio], notice: 'O prédio atualizado com sucesso' }
        else
          format.html { render :edit }
        end
      end
    end

    def destroy
      authorize @predio
      @predio.destroy
      respond_to do |format|
        format.html { redirect_to backoffice_predios_url, notice: 'O prédio foi excluído.' }
        format.json { head :no_content }
      end
    end

    private

    def set_predio
      @predio = Predio.find(params[:id])
    end

    def predio_params
      params.require(:predio).permit(:nome, :acronimo)
    end
  end
end
