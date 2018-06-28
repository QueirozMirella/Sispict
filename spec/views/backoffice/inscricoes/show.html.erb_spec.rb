# frozen_string_literal: true
# require 'rails_helper'

# RSpec.describe "inscricoes/show", type: :view do
#   before(:each) do

#     @edital = assign(:edital, Edital.create!(
#                                 cr: "9.99",
#                                 inicio: Date.today,
#                                 termino: Date.today + 7.days,
#                                 descricao: "MyText",
#                                 nome_do_arquivo: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'fixtures', 'pdf', 'test.pdf'), 'application/pdf')
#     ))

#     @inscricao = assign(:inscricao, Inscricao.create!(
#       :edital => @edital
#     ))
#   end

#   it "renders attributes in <p>" do
#     render
#     expect(rendered).to match(//)
#   end
# end
