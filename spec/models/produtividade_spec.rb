# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Produtividade, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:asset) }
  end

  describe 'associations' do
    it { should belong_to(:professor).class_name('Usuario').with_foreign_key(true) }
  end
end
