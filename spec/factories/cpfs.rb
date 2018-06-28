# frozen_string_literal: true

FactoryBot.define do
  factory :cpf do
    numero '060.541.118-80'
    asset { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'fixtures', 'pdf', 'test.pdf'), 'application/pdf') }
    usuario
  end
end
