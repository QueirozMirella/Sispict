# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Bolsa, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:quantidade) }
  end
end
