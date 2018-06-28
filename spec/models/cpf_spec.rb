# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CPF, type: :model do
  # describe 'validations' do
  #   it { should validate_presence_of(:asset) }
  # end

  describe 'association' do
    it { should belong_to(:usuario) }
  end
end
