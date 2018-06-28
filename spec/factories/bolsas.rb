# frozen_string_literal: true

FactoryBot.define do
  factory :bolsa do
    predio
    edital
    quantidade 1

    trait :invalida do
      quantidade nil
    end

    factory :bolsa_invalida, traits: [:invalida]
  end
end
