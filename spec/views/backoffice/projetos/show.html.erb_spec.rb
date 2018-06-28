# frozen_string_literal: true
# # frozen_string_literal: true

# require 'rails_helper'

# RSpec.describe "edital/1/projetos/show", type: :view do
#   before(:each) do

#     @edital = assign(:edital, Edital.create!(
#                                 cr: "9.99",
#                                 inicio: Date.today,
#                                 termino: Date.today + 7.days,
#                                 descricao: "MyText",
#                                 # asset: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'fixtures', 'pdf', 'test.pdf'), 'application/pdf')
#     ))

#     @projeto = assign(:projeto, Projeto.create!(
#       :titulo => "MyText",
#       :palavras_chave => "palavras_chave",
#       :area => "Area",
#       :objetivo => "MyText"
#     ))
#   end

#   it "renders attributes in <p>" do
#     # render
#     expect(rendered).to match(/MyText/)
#     expect(rendered).to match(/palavras_chave/)
#     expect(rendered).to match(/Area/)
#     expect(rendered).to match(/MyText/)
#   end
# end
