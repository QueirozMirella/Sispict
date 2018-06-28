# frozen_string_literal: true

FactoryBot.define do
  factory :usuario do
    password 'uenfbr2124'
    nome 'Rodolfo'
    sobrenome 'Peixoto'
    cpf { CPF.create(numero: '123.321.53-2', asset: Rails.root.join("spec/fixtures/pdf/test.pdf").open) }
    telefone Faker::PhoneNumber.phone_number
    celular Faker::PhoneNumber.cell_phone
    genero 1
    matricula Faker::Number.number(8)
    data_de_nascimento Faker::Date.birthday(18, 65)
    cr Faker::Number.decimal(1, 1)
    lattes 'http://lates.comn/rodolfopeixoto'
    laboratorio

    trait :inscricao_invalida do
      email nil
      nome nil
      sobrenome nil
      celular nil
      matricula Faker::Number.number(8)
      data_de_nascimento Faker::Date.birthday(18, 65)
      cr Faker::Number.decimal(1, 1)
      lattes 'http://lates.comn/rodolfopeixoto'
    end

    trait :aluno do
      email Faker::Internet.email
      after(:create) { |usuario| usuario.add_role(:aluno) }
    end
    
    trait :visitante do
      email Faker::Internet.email
      after(:create) { |usuario| usuario.add_role(:visitante) }
    end
    
    trait :professor do
      email Faker::Internet.email
      after(:create) { |usuario| usuario.add_role(:professor) }
    end

    trait :orientador do
      email Faker::Internet.email
      after(:create) { |usuario| usuario.add_role(:orientador) }
    end
    
    trait :avaliador do
      email Faker::Internet.email
      after(:create) { |usuario| usuario.add_role(:avaliador) }
    end
    
    trait :coordenador do
      email Faker::Internet.email
      after(:create) { |usuario| usuario.add_role(:coordenador) }
    end
    
    trait :assessor do
      email Faker::Internet.email
      after(:create) { |usuario| usuario.add_role(:assessor) }
    end

    factory :aluno, traits: [:aluno]
    factory :visitante, traits: [:visitante]
    factory :professor, traits: [:professor]
    factory :orientador, traits: [:orientador]
    factory :avaliador, traits: [:avaliador]
    factory :coordenador, traits: [:coordenador]
    factory :assessor, traits: [:assessor]
  end
end
