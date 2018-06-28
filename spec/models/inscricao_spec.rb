# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Inscricao, type: :model do
  describe 'Associations' do
    it { should belong_to(:edital) }
    it { should belong_to(:projeto) }
    it { should belong_to(:bolsista).class_name('Usuario') }
    it { should belong_to(:orientador).class_name('Usuario') }
    it { should have_one(:declaracao_de_vinculo) }
    it { should have_one(:extrato) }
    it { should have_one(:ficha_cadastral) }
  end

  describe 'Accepted nested attributes for' do
    it { should accept_nested_attributes_for(:projeto) }
    it { should accept_nested_attributes_for(:declaracao_de_vinculo) }
    it { should accept_nested_attributes_for(:extrato) }
    it { should accept_nested_attributes_for(:ficha_cadastral) }
  end
end
