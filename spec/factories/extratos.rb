# frozen_string_literal: true

FactoryBot.define do
  factory :extrato do
    asset { Rack::Test::Uploader.new(File.join(Rails.root, 'spec', 'fixtures', 'pdf', 'test.pdf'), 'application/pdf') }
  end
end
