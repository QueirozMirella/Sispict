# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Backoffice::LaboratoriosController, type: :controller do
  describe 'GET #index' do
    let(:usuario) { create(:assessor) }
    let(:predio) { create(:predio) }
    before do
      sign_in(usuario)
    end

    it 'renders the index template' do
      get :index, params: { predio_id: predio }
      expect(response).to be_success
    end
  end

  describe 'GET #show' do
    let(:predio) { create(:predio) }
    let(:usuario) { create(:assessor) }
    let(:laboratorio) { create(:laboratorio) }
    subject { get :show, params: { id: laboratorio, predio_id: predio } }
    before do
      sign_in(usuario)
    end

    it 'assigns the requested laboratorio to @laboratorio' do
      expect(subject).to be_success
    end
  end

  describe 'GET #new' do
    let(:usuario) { create(:assessor) }
    let(:predio) { create(:predio) }
    before do
      sign_in(usuario)
    end

    it 'returns a success response' do
      get :new, params: { predio_id: predio }
      expect(response).to be_success
    end
  end

  describe 'GET #edit' do
    let(:usuario) { create(:assessor) }
    let(:predio) { create(:predio) }
    let(:laboratorio) { create(:laboratorio) }

    before do
      sign_in(usuario)
    end

    it 'returns a success response' do
      get :edit, params: { id: laboratorio.to_param, predio_id: predio }
      expect(response).to be_success
    end
  end

  describe 'POST #create' do
    let(:predio) { create(:predio) }
    let(:laboratorio) { build(:laboratorio) }
    let(:usuario) { create(:assessor) }

    before do
      sign_in(usuario)
    end

    context 'with valid params' do
      let(:laboratorio_valid) { attributes_for(:laboratorio) }

      it 'creates a new Laboratorio' do
        expect { post :create, params: { laboratorio: laboratorio_valid, predio_id: predio } }.to change(Laboratorio, :count).by(1)
      end

      it 'redirects to the created laboratorio' do
        post :create, params: { laboratorio: laboratorio_valid, predio_id: predio }
        expect(response).to redirect_to([:backoffice, predio, Laboratorio.last])
      end
    end

    context 'with invalid params' do
      let(:laboratorio_invalid) { attributes_for(:laboratorio, :invalido) }

      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: { laboratorio: laboratorio_invalid, predio_id: predio }
        expect(response).to be_success
      end
    end
  end

  describe 'PUT #update' do
    let(:usuario) { create(:assessor) }
    let(:predio) { create(:predio) }
    let(:laboratorio) { create(:laboratorio) }

    before do
      sign_in(usuario)
    end

    context 'with valid params' do
      let(:valid_data) { attributes_for(:laboratorio, nome: 'Laboratório de Ciências Matemáticas', acronimo: 'LCMAT', predio_id: predio) }

      it 'updates the requested laboratorio' do
        put :update, params: { id: laboratorio, laboratorio: valid_data, predio_id: predio }
        laboratorio.reload
        expect(laboratorio.acronimo).to eq('LCMAT')
      end

      it 'redirects to the laboratorio' do
        put :update, params: { id: laboratorio, laboratorio: valid_data, predio_id: predio }
        expect(response).to redirect_to([:backoffice, predio, laboratorio])
      end
    end

    context 'with invalid params' do
      let(:laboratorio_invalid) { attributes_for(:laboratorio, :invalido) }
      it "returns a success response (i.e. to display the 'edit' template)" do
        put :update, params: { id: laboratorio, laboratorio: laboratorio_invalid, predio_id: predio }
        expect(response).to be_success
      end
    end
  end

  describe 'DELETE #destroy' do
    let(:predio) { create(:predio) }
    let(:usuario) { create(:assessor) }
    let(:laboratorio) { create(:laboratorio) }

    before do
      sign_in(usuario)
    end

    it 'destroys the requested laboratorio' do
      expect { delete :destroy, params: { id: laboratorio, predio_id: predio } }.to change(Laboratorio, :count).by(0)
    end

    it 'redirects to the laboratorios list' do
      delete :destroy, params: { id: laboratorio, predio_id: predio }
      expect(response).to redirect_to(backoffice_predio_laboratorios_url)
    end
  end
end
