# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Backoffice::UsuariosController, type: :controller do
  let(:usuario) { create(:assessor) }
  let(:plano_de_trabalho) { create(:plano_de_Trabalho) }
  before do
    sign_in(usuario)
  end

  describe 'GET #index' do
    before do
      sign_in(usuario)
    end

    it 'renders the index template' do
      get :index
      expect(response).to be_success
    end
  end

  describe 'GET #show' do
    subject { get :show, params: { id: usuario } }

    it 'assign the requested usuario to @usuario' do
      expect(subject).to be_success
    end
  end

  describe 'GET #edit' do
    it 'returns success response' do
      get :edit, params: { id: usuario }
      expect(response).to be_success
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:valid_data) { attributes_for(:assessor, nome: 'Carlos') }

      before do
        put :update, params: { id: usuario, usuario: valid_data }
      end

      it 'updates the requested usuario' do
        usuario.reload
        expect(usuario.nome).to eq('Rodolfo')
      end

      # it 'redirects to the usuario' do
      #   expect(response).to redirect_to(usuario)
      # end
    end

    # describe '#update_roles' do
    #   it 'update the usuario roles' do

    #   end
    # end

    # describe '#remove_all_roles' do
    #   it 'remove all usuario roles' do
    #     expect(usuario.roles).to eq([])
    #   end
    # end

    # context 'with invalid params' do
    #   let(:usuario_invalid) { attributes_for(:assessor, :invalido) }
    # end
  end
end
