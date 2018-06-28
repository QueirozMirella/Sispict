# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Backoffice::BolsasController, type: :controller do
  let(:predio) { create(:predio) }
  let(:edital) { create(:edital) }
  let(:bolsa) { create(:bolsa, edital_id: edital.id, predio_id: predio.id) }
  let(:assessor) { create(:assessor) }

  describe 'GET index' do
    before do
      sign_in(assessor)
    end
    it 'renders the index template' do
      get :index
      expect(response).to be_success
    end
  end

  describe 'GET show' do
    subject { get :show, params: { id: bolsa } }
    before do
      sign_in(assessor)
    end

    it 'assigns the requested bolsa to @bolsa' do
      expect(subject).to be_success
    end
  end

  describe 'GET #edit' do
    before do
      sign_in(assessor)
    end

    it 'returns success response' do
      get :edit, params: { id: bolsa }
      expect(response).to be_success
    end
  end

  describe 'POST #create' do
    before do
      sign_in(assessor)
    end

    context 'with valid params' do
      let(:bolsa_valido) { attributes_for(:bolsa, edital: edital, predio: predio) }

      it 'creates a new bolsa' do
        expect { post :create, params: { bolsa: bolsa_valido, edital: edital, predio: predio } }.to change(Bolsa, :count).by(1)
      end

      it 'redirects to the created bolsa' do
        post :create, params: { bolsa: bolsa_valido, edital: edital, predio: predio }
        expect(response).to redirect_to([:backoffice, Bolsa.last])
      end
    end

    context 'with invalid params' do
      let(:bolsa_invalido) { attributes_for(:bolsa_invalida, edital: edital, predio: predio) }

      it 'returns a success response' do
        post :create, params: { bolsa: bolsa_invalido, edital: edital, predio: predio }
        expect(response).to be_success
      end
    end
  end

  describe 'PUT #update' do
    before do
      sign_in(assessor)
    end
    context 'with valid params' do
      let(:valid_data) { attributes_for(:bolsa, edital: edital, predio: predio, quantidade: 12) }

      it 'updates the requested bolsa' do
        put :update, params: { id: bolsa, bolsa: valid_data, edital: edital, predio: predio }
        bolsa.reload
        expect(bolsa.quantidade).to eq(12)
      end

      it 'redirects to the bolsa' do
        put :update, params: { id: bolsa, bolsa: valid_data, edital: edital, predio: predio }
        expect(response).to redirect_to([:backoffice, bolsa])
      end
    end

    context 'with invalid params' do
      let(:bolsa_invalido) { attributes_for(:bolsa_invalida, edital: edital, predio: predio) }
      it 'return a success response' do
        put :update, params: { id: bolsa, bolsa: bolsa_invalido, edital: edital, predio: predio }
        expect(response).to be_success
      end
    end
  end

  describe 'DELETE #destroy' do
    before do
      sign_in(assessor)
    end

    it 'destroy the requested bolsa' do
      expect { delete :destroy, params: { id: bolsa } }.to change(Bolsa, :count).by(0)
    end

    it 'redirects to the bolsas list' do
      delete :destroy, params: { id: bolsa }
      expect(response).to redirect_to(backoffice_bolsas_url)
    end
  end
end
