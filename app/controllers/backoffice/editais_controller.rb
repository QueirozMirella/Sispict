# frozen_string_literal: true

module Backoffice
  class EditaisController < AdminApplication
    before_action :set_edital, only: [:show, :edit, :update, :destroy]
    before_action :options_predios, only: [:new, :create, :edit, :update]

    def index
      @editais = Edital.open

      @inscricao = if current_user.has_role? :assessor
                     Inscricao.all
                   else
                     Inscricao.minha_inscricao(current_usuario)
                   end
    end

    def show; end

    def new
      @edital = Edital.new
      @edital.bolsas.build
      authorize @edital
    end

    def edit
      authorize @edital
    end

    def create
      @edital = Edital.new(edital_params)
      authorize @edital

      respond_to do |format|
        if @edital.save
          format.html { redirect_to [:backoffice, @edital], notice: 'Edital foi criado com sucesso.' }
        else
          format.html { render :new }
        end
      end
    end

    def update
      authorize @edital
      respond_to do |format|
        if @edital.update(edital_params)
          format.html { redirect_to [:backoffice, @edital], notice: 'Edital atualizada com sucesso.' }
        else
          format.html { render :edit }
        end
      end
    end

    def destroy
      authorize @edital
      @edital.destroy
      respond_to do |format|
        format.html { redirect_to backoffice_editais_url, notice: 'Edital excluído.' }
      end
    end

    def options_predios
      @predios = Predio.all
    end

    private

    def set_edital
      @edital = Edital.find(params[:id])
    end

    def edital_params
      params.require(:edital).permit(:codigo, :inicio, :termino, :cr, :descricao, :asset, :asset_cache,
                                     bolsas_attributes: [
                                       :id,
                                       :predio_id,
                                       :edital_id,
                                       :quantidade
                                     ])
    end
  end
end
