# frozen_string_literal: true

FactoryBot.define do
  factory :predio do
    nome      Faker::University.name
    acronimo  Faker::University.greek_organization

    trait :invalido do
      nome { nil }
      acronimo { nil }
    end
  end
end
