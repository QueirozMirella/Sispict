# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Projeto, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:titulo) }
    it { should validate_presence_of(:palavras_chave) }
    it { should validate_presence_of(:area) }
    it { should validate_presence_of(:objetivo) }
  end
end
