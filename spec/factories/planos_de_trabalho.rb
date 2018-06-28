# frozen_string_literal: true

FactoryBot.define do
  factory :plano_de_trabalho do
    asset { Rack::Test::Uploader.new(File.join(Rails.root, 'spec', 'fixtures', 'pdf', 'test.pdf'), 'application/pdf') }
  end
end
