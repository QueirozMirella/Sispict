# frozen_string_literal: true

namespace :utils do
  desc 'Popular banco de dados'
  task seed: :environment do

    puts 'Gerando um Aluno'
    aluno = Usuario.create!(
      email: 'aluno@gmail.com',
      password: '123456789',
      password_confirmation: '123456789',
      nome: Faker::Name.first_name,
      sobrenome: Faker::Name.last_name,
      cpf: CPF.first,
      telefone: Faker::PhoneNumber.phone_number,
      celular: Faker::PhoneNumber.cell_phone,
      genero: 1,
      matricula: Faker::Number.number(8),
      data_de_nascimento: Faker::Date.birthday(18, 65),
      cr: Faker::Number.decimal(1, 1),
      lattes: 'http://lates.comn/rodolfopeixoto',
      laboratorio: Laboratorio.first
    )
    aluno.add_role(:aluno)
    puts 'Aluno cadastrado com sucesso.'

    puts 'Gerando um professor'
    professor = Usuario.create!(
      email: 'professor@gmail.com',
      password: '123456789',
      password_confirmation: '123456789',
      nome: Faker::Name.first_name,
      sobrenome: Faker::Name.last_name,
      cpf: CPF.first,
      telefone: Faker::PhoneNumber.phone_number,
      celular: Faker::PhoneNumber.cell_phone,
      genero: 1,
      matricula: Faker::Number.number(8),
      data_de_nascimento: Faker::Date.birthday(18, 65),
      cr: Faker::Number.decimal(1, 1),
      lattes: 'http://lates.comn/rodolfopeixoto',
      laboratorio: Laboratorio.first
    )
    professor.add_role(:professor)
    puts 'professor cadastrado com sucesso.'

    puts 'Gerando um orientador'
    orientador = Usuario.create!(
      email: 'orientador@gmail.com',
      password: '123456789',
      password_confirmation: '123456789',
      nome: Faker::Name.first_name,
      sobrenome: Faker::Name.last_name,
      cpf: CPF.first,
      telefone: Faker::PhoneNumber.phone_number,
      celular: Faker::PhoneNumber.cell_phone,
      genero: 1,
      matricula: Faker::Number.number(8),
      data_de_nascimento: Faker::Date.birthday(18, 65),
      cr: Faker::Number.decimal(1, 1),
      lattes: 'http://lates.comn/rodolfopeixoto',
      laboratorio: Laboratorio.first
    )
    orientador.add_role(:orientador)
    puts 'orientador cadastrado com sucesso.'

    # orientador teste

    puts 'Gerando um orientador'
    orientador = Usuario.create!(
      email: 'orientador1@gmail.com',
      password: '123456789',
      password_confirmation: '123456789',
      nome: Faker::Name.first_name,
      sobrenome: Faker::Name.last_name,
      cpf: CPF.first,
      telefone: Faker::PhoneNumber.phone_number,
      celular: Faker::PhoneNumber.cell_phone,
      genero: 1,
      matricula: Faker::Number.number(8),
      data_de_nascimento: Faker::Date.birthday(18, 65),
      cr: Faker::Number.decimal(1, 1),
      lattes: 'http://lates.comn/rodolfopeixoto',
      laboratorio: Laboratorio.first
    )
    orientador.add_role(:orientador)
    puts 'orientador cadastrado com sucesso.'

    puts 'Gerando um orientador'
    orientador = Usuario.create!(
      email: 'orientador2@gmail.com',
      password: '123456789',
      password_confirmation: '123456789',
      nome: Faker::Name.first_name,
      sobrenome: Faker::Name.last_name,
      cpf: CPF.first,
      telefone: Faker::PhoneNumber.phone_number,
      celular: Faker::PhoneNumber.cell_phone,
      genero: 1,
      matricula: Faker::Number.number(8),
      data_de_nascimento: Faker::Date.birthday(18, 65),
      cr: Faker::Number.decimal(1, 1),
      lattes: 'http://lates.comn/rodolfopeixoto',
      laboratorio: Laboratorio.first
    )
    orientador.add_role(:orientador)
    puts 'orientador cadastrado com sucesso.'

    puts 'Gerando um orientador'
    orientador = Usuario.create!(
      email: 'orientador3@gmail.com',
      password: '123456789',
      password_confirmation: '123456789',
      nome: Faker::Name.first_name,
      sobrenome: Faker::Name.last_name,
      cpf: CPF.first,
      telefone: Faker::PhoneNumber.phone_number,
      celular: Faker::PhoneNumber.cell_phone,
      genero: 1,
      matricula: Faker::Number.number(8),
      data_de_nascimento: Faker::Date.birthday(18, 65),
      cr: Faker::Number.decimal(1, 1),
      lattes: 'http://lates.comn/rodolfopeixoto',
      laboratorio: Laboratorio.last
    )
    orientador.add_role(:orientador)
    puts 'orientador cadastrado com sucesso.'



    puts 'Gerando um orientador'
    orientador = Usuario.create!(
      email: 'orientador4@gmail.com',
      password: '123456789',
      password_confirmation: '123456789',
      nome: Faker::Name.first_name,
      sobrenome: Faker::Name.last_name,
      cpf: CPF.first,
      telefone: Faker::PhoneNumber.phone_number,
      celular: Faker::PhoneNumber.cell_phone,
      genero: 1,
      matricula: Faker::Number.number(8),
      data_de_nascimento: Faker::Date.birthday(18, 65),
      cr: Faker::Number.decimal(1, 1),
      lattes: 'http://lates.comn/rodolfopeixoto',
      laboratorio: Laboratorio.last
    )
    orientador.add_role(:orientador)
    puts 'orientador cadastrado com sucesso.'



    puts 'Gerando um orientador'
    orientador = Usuario.create!(
      email: 'orientador5@gmail.com',
      password: '123456789',
      password_confirmation: '123456789',
      nome: Faker::Name.first_name,
      sobrenome: Faker::Name.last_name,
      cpf: CPF.first,
      telefone: Faker::PhoneNumber.phone_number,
      celular: Faker::PhoneNumber.cell_phone,
      genero: 1,
      matricula: Faker::Number.number(8),
      data_de_nascimento: Faker::Date.birthday(18, 65),
      cr: Faker::Number.decimal(1, 1),
      lattes: 'http://lates.comn/rodolfopeixoto',
      laboratorio: Laboratorio.find(5)
    )
    orientador.add_role(:orientador)
    puts 'orientador cadastrado com sucesso.'




    puts 'Gerando um orientador'
    orientador = Usuario.create!(
      email: 'orientador6@gmail.com',
      password: '123456789',
      password_confirmation: '123456789',
      nome: Faker::Name.first_name,
      sobrenome: Faker::Name.last_name,
      cpf: CPF.first,
      telefone: Faker::PhoneNumber.phone_number,
      celular: Faker::PhoneNumber.cell_phone,
      genero: 1,
      matricula: Faker::Number.number(8),
      data_de_nascimento: Faker::Date.birthday(18, 65),
      cr: Faker::Number.decimal(1, 1),
      lattes: 'http://lates.comn/rodolfopeixoto',
      laboratorio: Laboratorio.find(10)
    )
    orientador.add_role(:orientador)
    puts 'orientador cadastrado com sucesso.'

    # orientador teste

    puts 'Gerando um coordenador'
    coordenador = Usuario.create!(
      email: 'coordenador@gmail.com',
      password: '123456789',
      password_confirmation: '123456789',
      nome: Faker::Name.first_name,
      sobrenome: Faker::Name.last_name,
      cpf: CPF.first,
      telefone: Faker::PhoneNumber.phone_number,
      celular: Faker::PhoneNumber.cell_phone,
      genero: 1,
      matricula: Faker::Number.number(8),
      data_de_nascimento: Faker::Date.birthday(18, 65),
      cr: Faker::Number.decimal(1, 1),
      lattes: 'http://lates.comn/rodolfopeixoto',
      laboratorio: Laboratorio.first
    )
    coordenador.add_role(:coordenador)
    puts 'coordenador cadastrado com sucesso.'

    puts 'Gerando um avaliador'
    avaliador = Usuario.create!(
      email: 'avaliador@gmail.com',
      password: '123456789',
      password_confirmation: '123456789',
      nome: Faker::Name.first_name,
      sobrenome: Faker::Name.last_name,
      cpf: CPF.first,
      telefone: Faker::PhoneNumber.phone_number,
      celular: Faker::PhoneNumber.cell_phone,
      genero: 1,
      matricula: Faker::Number.number(8),
      data_de_nascimento: Faker::Date.birthday(18, 65),
      cr: Faker::Number.decimal(1, 1),
      lattes: 'http://lates.comn/rodolfopeixoto',
      laboratorio: Laboratorio.first
    )
    avaliador.add_role(:avaliador)
    puts 'avaliador cadastrado com sucesso.'

    puts 'Gerando Edital'

    Edital.create!(
        inicio: Date.today,
        termino: Date.tomorrow + 1.month,
        cr: 7.0,
        descricao: 'Edital para todos os alunos que desejam participar da Iniciação Cientifica',
        asset: Rails.root.join("spec/fixtures/pdf/test.pdf").open,
        modalidades: 1
    )
    
    puts 'Edital gerado com sucesso!!'

  end
end
