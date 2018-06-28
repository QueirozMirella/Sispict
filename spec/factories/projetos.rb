# frozen_string_literal: true

FactoryBot.define do
  factory :projeto do
    titulo { Faker::Lorem.sentence }
    palavras_chave { Faker::Lorem.characters }
    area { Faker::Lorem.characters(10) }
    objetivo { Faker::Lorem.paragraph(2) }

    trait :invalido do
      titulo { nil }
      palavras_chave { nil }
      area { nil }
      objetivo { nil }
    end

    factory :projeto_invalido, traits: [:invalido]
  end
end
