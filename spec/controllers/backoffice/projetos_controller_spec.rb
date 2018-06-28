# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Backoffice::ProjetosController, type: :controller do
  let(:edital) { create(:edital) }

  describe 'GET index' do
    let(:aluno) { create(:aluno) }
    before do
      sign_in(aluno)
    end
    it 'renders the index template' do
      get :index, params: { edital_id: edital.id }
      expect(response).to be_success
    end
  end

  describe 'GET show' do
    let(:aluno) { create(:aluno) }
    let(:projeto) { create(:projeto) }
    subject { get :show, params: { id: projeto, edital_id: edital.id } }
    before do
      sign_in(aluno)
    end

    it 'assigns the requested projeto to @projeto' do
      expect(subject).to be_success
    end
  end

  describe 'GET #edit' do
    let(:assessor) { create(:assessor) }
    let(:projeto) { create(:projeto) }

    before do
      sign_in(assessor)
    end

    it 'returns success response' do
      get :edit, params: { id: projeto, edital_id: edital.id }
      expect(response).to be_success
    end
  end

  describe 'POST #create' do
    let(:projeto) { build(:projeto) }
    let(:aluno) { create(:aluno) }

    before do
      sign_in(aluno)
    end

    context 'with valid params' do
      let(:projeto_valido) { attributes_for(:projeto, edital_id: edital.id) }

      it 'create a new Projeto' do
        expect { post :create, params: { projeto: projeto_valido, edital_id: edital.id } }.to change(Projeto, :count).by(1)
      end

      it 'redirects to the created projeto' do
        post :create, params: { projeto: projeto_valido, edital_id: edital.id }
        expect(response).to redirect_to([:backoffice, edital, Projeto.last])
      end
    end

    context 'with invalid params' do
      let(:projeto_invalido) { attributes_for(:projeto, :invalido, edital_id: edital.id) }

      it 'returns a success response' do
        post :create, params: { projeto: projeto_invalido, edital_id: edital.id }
        expect(response).to be_success
      end
    end
  end

  describe 'PUT #update' do
    let(:assessor) { create(:assessor) }
    let(:projeto) { create(:projeto) }
    before do
      sign_in(assessor)
    end
    context 'with valid params' do
      let(:valid_data) { attributes_for(:projeto, titulo: 'Plantas do sul') }

      it 'updates the requested projeto' do
        put :update, params: { id: projeto, projeto: valid_data, edital_id: edital.id }
        projeto.reload
        expect(projeto.titulo).to eq('Plantas do sul')
      end

      it 'redirects to the projeto' do
        put :update, params: { id: projeto, projeto: valid_data, edital_id: edital.id }
        expect(response).to redirect_to([:backoffice, edital, projeto])
      end
    end

    context 'with invalid params' do
      let(:projeto_invalido) { attributes_for(:projeto, :invalido, edital_id: edital.id) }
      it 'return a success response' do
        put :update, params: { id: projeto, projeto: projeto_invalido, edital_id: edital.id }
        expect(response).to be_success
      end
    end
  end

  describe 'DELETE #destroy' do
    let(:assessor) { create(:assessor) }
    let(:projeto) { create(:projeto) }

    before do
      sign_in(assessor)
    end

    it 'destroy the requested projeto' do
      expect { delete :destroy, params: { id: projeto, edital_id: edital.id } }.to change(Projeto, :count).by(0)
    end

    it 'redirects to the projetos list' do
      delete :destroy, params: { id: projeto, edital_id: edital.id }
      expect(response).to redirect_to(backoffice_editais_url)
    end
  end
end
