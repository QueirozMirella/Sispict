# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Predio, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:nome) }
    it { should validate_presence_of(:acronimo) }
  end

  describe 'associations' do
    it { should have_many(:laboratorios) }
  end
end
