# frozen_string_literal: true

module Backoffice
  class ProjetosController < AdminApplication
    before_action :authenticate_usuario!
    before_action :set_edital
    before_action :set_projeto, only: [:show, :edit, :update, :destroy]

    def index
      @projetos = Projeto.all
    end

    def show; end

    def new
      @projeto = Projeto.new
      @projeto.build_edital
    end

    def edit; end

    def create
      @projeto = Projeto.new(projeto_params)

      respond_to do |format|
        if @projeto.save
          format.html { redirect_to [:backoffice, @edital, @projeto], notice: 'O projeto foi criado com sucesso.' }
        else
          format.html { render :new }
        end
      end
    end

    def update
      respond_to do |format|
        if @projeto.update(projeto_params)
          format.html { redirect_to [:backoffice, @edital, @projeto], notice: 'O projeto foi atualizado com sucesso.' }
        else
          format.html { render :edit }
        end
      end
    end

    def destroy
      @projeto.destroy
      respond_to do |format|
        format.html { redirect_to backoffice_editais_url, notice: 'O projeto foi excluído.' }
        format.json { head :no_content }
      end
    end

    private

    def set_projeto
      @projeto = Projeto.find(params[:id])
    end

    def set_edital
      @edital = Edital.find(params[:edital_id])
    end

    def projeto_params
      params.require(:projeto).permit(:titulo, :palavras_chave, :area, :objetivo)
    end
  end
end
