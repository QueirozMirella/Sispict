# frozen_string_literal: true

module Backoffice
  class BolsasController < AdminApplication
    before_action :set_bolsa, only: [:show, :edit, :update, :destroy]

    def index
      @bolsas = Bolsa.all
    end

    def show; end

    def new
      @bolsa = Bolsa.new
    end

    def edit; end

    def create
      @bolsa = Bolsa.new(bolsa_params)

      respond_to do |format|
        if @bolsa.save
          format.html { redirect_to [:backoffice, @bolsa], notice: 'Bolsa was successfully created.' }
        else
          format.html { render :new }
        end
      end
    end

    def update
      respond_to do |format|
        if @bolsa.update(bolsa_params)
          format.html { redirect_to [:backoffice, @bolsa], notice: 'Bolsa was successfully updated.' }
        else
          format.html { render :edit }
        end
      end
    end

    # DELETE /bolsas/1
    # DELETE /bolsas/1.json
    def destroy
      @bolsa.destroy
      respond_to do |format|
        format.html { redirect_to backoffice_bolsas_url, notice: 'Bolsa was successfully destroyed.' }
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_bolsa
      @bolsa = Bolsa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bolsa_params
      params.require(:bolsa).permit(:predio_id, :edital_id, :quantidade)
    end
  end
end
