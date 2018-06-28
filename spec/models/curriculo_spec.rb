# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Curriculo, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:asset) }
  end
  describe 'associations' do
    it { should belong_to(:usuario) }
  end
end
