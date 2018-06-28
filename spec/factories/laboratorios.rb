# frozen_string_literal: true

FactoryBot.define do
  factory :laboratorio do
    nome      Faker::University.name
    acronimo  Faker::University.greek_organization
    predio

    trait :invalido do
      nome { nil }
      acronimo { nil }
    end
  end
end
