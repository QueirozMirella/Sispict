# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Backoffice::PrediosController, type: :controller do
  describe 'GET index' do
    let(:assessor) { create(:assessor) }
    before do
      sign_in(assessor)
    end
    it 'renders the index template' do
      get :index
      expect(response).to be_success
    end
  end

  describe 'GET show' do
    let(:assessor) { create(:assessor) }
    let(:predio) { create(:predio) }
    subject { get :show, params: { id: predio } }
    before do
      sign_in(assessor)
    end

    it 'assigns the requested predio to @predio' do
      expect(subject).to be_success
    end
  end

  describe 'GET #edit' do
    let(:assessor) { create(:assessor) }
    let(:predio) { create(:predio) }

    before do
      sign_in(assessor)
    end

    it 'returns success response' do
      get :edit, params: { id: predio }
      expect(response).to be_success
    end
  end

  describe 'POST #create' do
    let(:predio) { build(:predio) }
    let(:assessor) { create(:assessor) }

    before do
      sign_in(assessor)
    end

    context 'with valid params' do
      let(:predio_valido) { attributes_for(:predio) }

      it 'creates a new Predio' do
        expect { post :create, params: { predio: predio_valido } }.to change(Predio, :count).by(1)
      end

      it 'redirects to the created predio' do
        post :create, params: { predio: predio_valido }
        expect(response).to redirect_to([:backoffice, Predio.last])
      end
    end

    context 'with invalid params' do
      let(:predio_invalido) { attributes_for(:predio, :invalido) }

      it 'returns a success response' do
        post :create, params: { predio: predio_invalido }
        expect(response).to be_success
      end
    end
  end

  describe 'PUT #update' do
    let(:assessor) { create(:assessor) }
    let(:predio) { create(:predio) }
    before do
      sign_in(assessor)
    end
    context 'with valid params' do
      let(:valid_data) { attributes_for(:predio, nome: 'P5') }

      it 'updates the requested predio' do
        put :update, params: { id: predio, predio: valid_data }
        predio.reload
        expect(predio.nome).to eq('P5')
      end

      it 'redirects to the predio' do
        put :update, params: { id: predio, predio: valid_data }
        expect(response).to redirect_to([:backoffice, predio])
      end
    end

    context 'with invalid params' do
      let(:predio_invalido) { attributes_for(:predio, :invalido) }
      it 'return a success response' do
        put :update, params: { id: predio, predio: predio_invalido }
        expect(response).to be_success
      end
    end
  end

  describe 'DELETE #destroy' do
    let(:assessor) { create(:assessor) }
    let(:predio) { create(:predio) }

    before do
      sign_in(assessor)
    end

    it 'destroy the requested predio' do
      expect { delete :destroy, params: { id: predio } }.to change(Predio, :count).by(0)
    end

    it 'redirects to the predios list' do
      delete :destroy, params: { id: predio }
      expect(response).to redirect_to(backoffice_predios_url)
    end
  end
end
