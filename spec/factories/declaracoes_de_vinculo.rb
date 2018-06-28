# frozen_string_literal: true

FactoryBot.define do
  factory :declaracao_de_vinculo do
    asset { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'fixtures', 'pdf', 'test.pdf'), 'application/pdf') }
  end
end
