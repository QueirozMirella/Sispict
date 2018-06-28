# frozen_string_literal: true

module Backoffice
  class InscricoesController < AdminApplication
    before_action :set_inscricao, only: [:show, :edit, :update, :destroy]
    before_action :set_edital, except: [:editais]
    before_action :set_laboratorio, only: [:edit, :update, :create, :new]
    before_action :set_options_for_select, only: [:edit, :update, :create, :new]

    def index
      if existe_inscricao?(@edital)
        @inscricoes = nil
      else
        @inscricoes = Inscricao.order(:created_at)
        authorize @inscricoes, :index?
      end
    end

    def show
      find_projeto(@inscricao.projeto_id)
    end

    def new
      @inscricao = @edital.inscricoes.build
      @inscricao.build_projeto
      @inscricao.build_declaracao_de_vinculo
      @inscricao.build_extrato
      @inscricao.build_ficha_cadastral
    end

    def edit; end

    def create
      @inscricao = @edital.inscricoes.build(inscricao_params)
      @inscricao.bolsista = current_usuario

      respond_to do |format|
        if @inscricao.save
          format.html { redirect_to [:backoffice, @edital, @inscricao], notice: 'Você está inscrito neste edital, aguarde o resultado.' }
        else
          format.html { render :new }
        end
      end
    end

    def update
      respond_to do |format|
        if @inscricao.update(inscricao_params)
          format.html { redirect_to [:backoffice, @edital, @inscricao], notice: 'Inscrição atualizada com sucesso.' }
        else
          format.html { render :edit }
        end
      end
    end

    def destroy
      @inscricao.destroy
      respond_to do |format|
        format.html { redirect_to [:backoffice, @edital, @inscricao], notice: 'Inscricao foi excluída com sucesso.' }
      end
    end

    def editais
      @editais = Edital.all
    end

    def set_options_for_select
      @orientador_options_for_select = Usuario.with_role :orientador
    end

    private

    def set_inscricao
      @inscricao = Inscricao.find(params[:id])
    end

    def set_edital
      @edital = Edital.find(params[:edital_id])
    end

    def set_laboratorio
      @laboratorios = Laboratorio.pluck(:nome, :id)
    end

    def find_projeto(identification)
      @projeto = Projeto.find(identification)
    end

    def find_orientador(identification)
      @orientador = Usuario.find(identification)
    end

    def existe_inscricao?(_edital)
      return true if @edital.nil?
      false
    end

    def inscricao_params
      params.require(:inscricao).permit(:edital_id, :bolsista_id, :orientador_id,
                                        projeto_attributes: [:id, :titulo, :palavras_chave, :area,
                                                             :objetivo, :_destroy],
                                        declaracao_de_vinculo_attributes: [:id, :asset, :asset_cache, :_destroy],
                                        extrato_attributes: [:id, :asset, :asset_cache, :_destroy],
                                        ficha_cadastral_attributes: [:id, :asset, :asset_cache, :_destroy])
    end
  end
end
