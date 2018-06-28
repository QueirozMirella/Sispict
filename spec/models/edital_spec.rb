# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Edital, type: :model do
  let(:edital) { create(:edital) }

  describe 'validations' do
    it { should validate_presence_of(:inicio) }
    it { should validate_presence_of(:termino) }
    it { should validate_presence_of(:cr) }
    it { should validate_presence_of(:asset) }
  end

  describe 'Associations' do
    it { should have_many(:inscricoes) }
    it { should have_many(:bolsas) }
  end

  describe 'Accepted nested attributes for' do
    it { should accept_nested_attributes_for(:bolsas) }
  end

  describe 'ENUM' do
    it { should define_enum_for(:modalidades).with([:voluntario, :centifica, :tecnologica, :especial]) }
  end

  describe '#add_code' do
    it 'should create a codigo' do
      edital = Edital.new(
        inicio: Faker::Date.between(2.days.ago, Date.today),
        termino: Faker::Date.between(2.days.ago, Date.today + 10.days),
        cr: 9.99, descricao: Faker::Lorem,
        asset: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'fixtures', 'pdf', 'test.pdf'), 'application/pdf')
      )
      edital.codigo ||= Time.now.strftime('%d%m%Y').to_s
      expect(edital.codigo).to eq(Time.now.strftime('%d%m%Y').to_s)
    end
  end

  describe '#date_validate' do
    it 'should be return 7 days'
  end

  describe '#open' do
    it 'should be return open edital'
  end

  describe '#days_difference' do
    it 'should be return true termino > inicio' do
      days_difference = edital.termino > edital.inicio
      expect(days_difference).to be true
    end
  end
end
