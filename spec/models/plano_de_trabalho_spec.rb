# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PlanoDeTrabalho, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:asset) }
  end

  describe 'associations' do
    it { should belong_to(:professor).class_name('Usuario') }
  end
end
