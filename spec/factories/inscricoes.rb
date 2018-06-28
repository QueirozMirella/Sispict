# frozen_string_literal: true

FactoryBot.define do
  factory :inscricao do
    edital
    projeto
    association :orientador_id, factory: :usuario
    association :bolsista_id, factory: :usuario

    trait :invalido do
      projeto { build(:projeto, title: nil) }
    end

    factory :inscricao_invalida, traits: [:invalido]
  end
end
