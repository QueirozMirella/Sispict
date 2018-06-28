# frozen_string_literal: true

FactoryBot.define do
  factory :edital do
    inicio { Date.today }
    termino { Date.tomorrow }
    cr 9.99
    descricao Faker::Lorem
    asset { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'fixtures', 'pdf', 'test.pdf'), 'application/pdf') }

    trait :invalido do
      cr { nil }
      descricao { nil }
      asset { nil }
    end

    factory :edital_invalido, traits: [:invalido]
  end
end
