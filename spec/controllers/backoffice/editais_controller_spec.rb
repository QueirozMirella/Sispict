# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Backoffice::EditaisController, type: :controller do
  describe 'GET #index' do
    let(:aluno) { create(:aluno) }
    let(:edital) { create(:edital) }
    let(:inscricao) { create(:inscricao) }
    before do
      sign_in(aluno)
    end
    it 'returns a success response' do
      get :index
      expect(response).to be_success
    end
  end

  describe 'GET #show' do
    let(:assessor) { create(:assessor) }
    let(:edital) { create(:edital) }
    subject { get :show, params: { id: edital } }
    before do
      sign_in(assessor)
    end

    it 'assigns the requested edital to @edital' do
      expect(subject).to be_success
    end
  end
  describe 'GET #edit' do
    let(:assessor) { create(:assessor) }
    let(:edital) { create(:edital) }

    before do
      sign_in(assessor)
    end

    it 'returns success response' do
      get :edit, params: { id: edital }
      expect(response).to be_success
    end
  end

  describe 'POST #create' do
    let(:assessor) { create(:assessor) }
    let(:edital) { build(:edital) }

    before do
      sign_in(assessor)
    end

    context 'with valid params' do
      let(:edital_valido) { attributes_for(:edital) }

      it 'creates a new Edital' do
        expect { post :create, params: { edital: edital_valido } }.to change(Edital, :count).by(1)
      end

      it 'redirects to the created edital' do
        post :create, params: { edital: edital_valido }
        expect(response).to redirect_to([:backoffice, Edital.last])
      end
    end

    context 'with invalid params' do
      let(:edital_invalido) { attributes_for(:edital, :invalido) }

      it 'returns a success response' do
        post :create, params: { edital: edital_invalido }
        expect(response).to be_success
      end
    end
  end

  describe 'PUT #update' do
    let(:assessor) { create(:assessor) }
    let(:edital) { create(:edital) }
    before do
      sign_in(assessor)
    end
    context 'with valid params' do
      let(:valid_data) { attributes_for(:edital, cr: 6.0) }

      it 'updates the requested edital' do
        put :update, params: { id: edital, edital: valid_data }
        edital.reload
        expect(edital.cr).to eq(6.0)
      end

      it 'redirects to the edital' do
        put :update, params: { id: edital, edital: valid_data }
        expect(response).to redirect_to([:backoffice, edital])
      end
    end

    context 'with invalid params' do
      let(:edital_invalido) { attributes_for(:edital, :invalido) }
      it 'return a success response' do
        put :update, params: { id: edital, edital: edital_invalido }
        expect(response).to be_success
      end
    end
  end

  describe 'DELETE #destroy' do
    let(:assessor) { create(:assessor) }
    let(:edital) { create(:edital) }

    before do
      sign_in(assessor)
    end

    it 'destroy the requested edital' do
      expect { delete :destroy, params: { id: edital } }.to change(Edital, :count).by(0)
    end

    it 'redirects to the editais list' do
      delete :destroy, params: { id: edital }
      expect(response).to redirect_to(backoffice_editais_url)
    end
  end
end
