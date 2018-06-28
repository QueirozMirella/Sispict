# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Cadastro de Predios
puts '============== Iniciando o cadastro dos predios =============='
if Predio.all.size.eql? 0
  Predio.create!(
    nome: 'Centro de Biociências e Biotecnologia',
    acronimo: 'CBB'
  )

  Predio.create!(
    nome: 'Centro de Ciências e Tecnologias Agropecuárias',
    acronimo: 'CCTA'
  )

  Predio.create!(
    nome: 'Centro de Ciências do Homem',
    acronimo: 'CCH'
  )

  Predio.create!(
    nome: 'Centro de Ciência e Tecnologia',
    acronimo: 'CCT'
  )
end
puts '============== Predios cadastrados com sucesso. =============='

# Laboratorios

puts '============== Iniciando o cadastro dos Laboratorios. ==============='

# CBB
if Laboratorio.all.size.eql? 0
  Laboratorio.create!(
    nome: 'Laboratório de Biologia Celular e Tecidual',
    acronimo: 'LBCT',
    predio_id: Predio.find(1)
  )

  Laboratorio.create!(
    nome: 'Laboratório de Biologia do Reconhecer',
    acronimo: 'LBR',
    predio_id: Predio.find(1)
  )

  Laboratorio.create!(
    nome: 'Laboratório de Biotecnologia',
    acronimo: 'LBT',
    predio_id: Predio.find(1)
  )

  Laboratorio.create!(
    nome: 'Laboratório de Ciências Ambientais',
    acronimo: 'LCA',
    predio_id: Predio.find(1)
  )

  Laboratorio.create!(
    nome: 'Laboratório  de Fisiologia e Bioquímica de Micro-organismos',
    acronimo: 'LFBM',
    predio_id: Predio.find(1)
  )

  Laboratorio.create!(
    nome: 'Laboratório  de Química e Funções de Proteínas e Peptídeos',
    acronimo: 'LQFPP',
    predio_id: Predio.find(1)
  )

  # CCTA

  Laboratorio.create!(
    nome: 'Laboratório  de Engenharia Agrícola',
    acronimo: 'LEAG',
    predio_id: Predio.find(2)
  )

  Laboratorio.create!(
    nome: 'Laboratório  de Entomologia e Fitopatologia',
    acronimo: 'LEF',
    predio_id: Predio.find(2)
  )

  Laboratorio.create!(
    nome: 'Laboratório de Reprodução e Melhoramento Genético Animal',
    acronimo: 'LRMGA',
    predio_id: Predio.find(2)
  )

  Laboratorio.create!(
    nome: 'Laboratório de Sanidade Animal',
    acronimo: 'LSA',
    predio_id: Predio.find(2)
  )

  Laboratorio.create!(
    nome: 'Laboratório de Solos',
    acronimo: 'LSOL',
    predio_id: Predio.find(2)
  )

  Laboratorio.create!(
    nome: 'Laboratório  de Tecnologia de Alimentos',
    acronimo: 'LTA',
    predio_id: Predio.find(2)
  )

  Laboratorio.create!(
    nome: 'Laboratório  de Zootecnia',
    acronimo: 'LZO',
    predio_id: Predio.find(2)
  )

  Laboratorio.create!(
    nome: 'Laboratório de Melhoramento Genético Vegetal',
    acronimo: 'LMGV',
    predio_id: Predio.find(2)
  )

  Laboratorio.create!(
    nome: 'Laboratório de Clínica e Cirurgia Animal',
    acronimo: 'LCCA',
    predio_id: Predio.find(2)
  )

  Laboratorio.create!(
    nome: 'Laboratório de Morfologia e Patologia Animal',
    acronimo: 'LMPA',
    predio_id: Predio.find(2)
  )

  Laboratorio.create!(
    nome: 'Laboratório  de Fitotecnia',
    acronimo: 'LFIT',
    predio_id: Predio.find(2)
  )

  # CCH

  Laboratorio.create!(
    nome: 'Laboratório de Cognição e Linguagem',
    acronimo: 'LCL',
    predio_id: Predio.find(3)
  )

  Laboratorio.create!(
    nome: 'Laboratório de Estudo da Educação e Linguagem',
    acronimo: 'LEEL',
    predio_id: Predio.find(3)
  )

  Laboratorio.create!(
    nome: 'Laboratório de Estudo da Sociedade Civil e do Estado',
    acronimo: 'LESCE',
    predio_id: Predio.find(3)
  )

  Laboratorio.create!(
    nome: 'Laboratório de Estudo do Espaço Antrópico',
    acronimo: 'LEEA',
    predio_id: Predio.find(3)
  )

  Laboratorio.create!(
    nome: 'Laboratório de Gestão e Políticas Públicas',
    acronimo: 'LGPP',
    predio_id: Predio.find(3)
  )

  # CCT

  Laboratorio.create!(
    nome: 'Laboratório  de Ciências Físicas',
    acronimo: 'LCFIS',
    predio_id: Predio.find(4)
  )

  Laboratorio.create!(
    nome: 'Laboratório de Ciências Matemáticas',
    acronimo: 'LCMAT',
    predio_id: Predio.find(4)
  )

  Laboratorio.create!(
    nome: 'Laboratório de Ciências Químicas',
    acronimo: 'LCQUI',
    predio_id: Predio.find(4)
  )

  Laboratorio.create!(
    nome: 'Laboratório de Engenharia Civil',
    acronimo: 'LECIV',
    predio_id: Predio.find(4)
  )

  Laboratorio.create!(
    nome: 'Laboratório  de Engenharia de Exploração de Petróleo',
    acronimo: 'LENEP',
    predio_id: Predio.find(4)
  )

  Laboratorio.create!(
    nome: 'Laboratório  de Engenharia de Produção',
    acronimo: 'LEPROD',
    predio_id: Predio.find(4)
  )

  Laboratorio.create!(
    nome: 'Laboratório  de Materiais Avançados',
    acronimo: 'LAMAV',
    predio_id: Predio.find(4)
  )

  Laboratorio.create!(
    nome: 'Laboratório de Meteorologia',
    acronimo: 'LAMET',
    predio_id: Predio.find(4)
  )
end
puts '============== Laboratorios cadastrados com sucesso.============== '

unless CPF.find_by(numero: '050.410.128-90').present?
  CPF.create!(
    numero: '050.410.128-90',
    asset: Rails.root.join("spec/fixtures/pdf/test.pdf").open
  )
end

puts 'Gerado os CPFs'

puts 'Gerando um Assessor'

unless Usuario.find_by(email: 'assessor@gmail.com').present?

  assessor = Usuario.create!(
    email: 'assessor@gmail.com',
    password: '123456789',
    password_confirmation: '123456789',
    nome: 'Administrador',
    sobrenome: 'Dashboard',
    cpf: CPF.first,
    telefone: '22998436658',
    celular: '2258547588',
    genero: 1,
    matricula: 5112,
    data_de_nascimento: Date.today,
    cr: 7.0,
    lattes: 'http://lates.comn/teste',
    laboratorio: Laboratorio.first
  )
  assessor.add_role(:assessor)
end
puts 'Assessor cadastrado com sucesso.'
