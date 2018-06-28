# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Usuario, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:nome) }
    it { should validate_presence_of(:sobrenome) }
    it { should validate_presence_of(:celular) }
    it { should validate_presence_of(:data_de_nascimento) }
    it { should validate_presence_of(:cr) }
    it { should validate_presence_of(:lattes) }
  end

  describe 'associations' do
    it { should belong_to(:laboratorio) }
    it { should have_one(:cpf) }
    it { should have_one(:curriculo) }
    it { should have_one(:identidade) }
    it { should have_one(:plano_de_trabalho) }
    it { should have_one(:produtividade) }
  end

  describe 'Accepted nested attributes for' do
    it { should accept_nested_attributes_for(:identidade) }
    it { should accept_nested_attributes_for(:cpf) }
    it { should accept_nested_attributes_for(:produtividade) }
    it { should accept_nested_attributes_for(:plano_de_trabalho) }
    it { should accept_nested_attributes_for(:curriculo) }
  end

  describe '#roles_name' do
    let(:usuario) { FactoryBot.create(:usuario, :aluno) }
    it 'should show all roles' do
      expect(usuario.roles_name).to eq('aluno')
    end
  end

  describe '#assign_default_role' do
    let(:usuario) { FactoryBot.create(:aluno) }

    it 'should after save assign default role' do
      expect(usuario.roles_name).to eq('aluno')
    end
  end
end
