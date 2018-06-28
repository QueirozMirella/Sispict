# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Backoffice::InscricoesController, type: :controller do
  let(:aluno) { create(:usuario, :aluno) }
  let(:professor) { create(:usuario, :professor) }
  let(:edital) { create(:edital) }
  let(:projeto) { create(:projeto) }
  let(:inscricao) { create(:inscricao, orientador_id: professor.id, bolsista_id: aluno.id, projeto: projeto) }

  before do
    sign_in(aluno)
  end

  # describe 'GET #index' do
  #   it 'returns a success response' do
  #     get :index, params: { edital_id: edital.id }
  #     expect(response).to be_success
  #   end
  # end

  describe 'GET #show' do
    subject { get :show, params: { edital_id: edital.id, id: inscricao } }
    it 'assigns the requested inscricao to @inscricao' do
      expect(subject).to be_success
    end
  end
  describe 'GET #edit' do
    before do
      sign_in(aluno)
    end

    it 'returns success response' do
      get :edit, params: { edital_id: edital.id, id: inscricao }
      expect(response).to be_success
    end
  end

  describe 'POST #create' do
    before do
      sign_in(aluno)
    end

    context 'with valid params' do
      let(:inscricao_valida) { attributes_for(:inscricao, edital_id: edital.id) }

      it 'Register a new Inscricao' do
        expect { post :create, params: { edital_id: edital.id, inscricao: inscricao_valida } }.to change(Inscricao, :count).by(1)
      end

      it 'redirects to the created inscricao' do
        post :create, params: { edital_id: edital.id, inscricao: inscricao_valida }
        expect(response).to redirect_to([:backoffice, edital, Inscricao.last])
      end
    end

    # context 'with invalid params' do
    #   let(:inscricao_invalida) { attributes_for(:inscricao_invalida, edital_id: edital.id) }

    #   it 'returns a success response' do
    #     binding.pry
    #     expect { post :create, params: {edital_id: edital.id , inscricao: inscricao_invalida } }.not_to change(Inscricao, :count)
    #   end
    # end
  end

  describe 'DELETE #destroy' do
    before do
      sign_in(:assessor)
    end
    it 'destroy the requested inscricao' do
      expect { delete :destroy, params: { edital_id: edital.id, id: inscricao } }.to change(Inscricao, :count).by(0)
    end

    it 'redirects to the predios list' do
      delete :destroy, params: { edital_id: edital.id, id: inscricao }
      expect(response).to redirect_to(backoffice_edital_inscricoes_url)
    end
  end
end
