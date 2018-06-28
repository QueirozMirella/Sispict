# frozen_string_literal: true
# # frozen_string_literal: true

# require 'rails_helper'

# RSpec.describe "projetos/index", type: :view do
#   before(:each) do
#     assign(:projetos, [
#       Projeto.create!(
#         :titulo => "MyText",
#         :palavras_chave => "palavras_chave",
#         :area => "Area",
#         :objetivo => "Teste"
#       ),
#       Projeto.create!(
#         :titulo => "MyText",
#         :palavras_chave => "palavras_chave",
#         :area => "Area",
#         :objetivo => "Teste"
#       )
#     ])
#   end

#   it "renders a list of projetos" do
#     render
#     assert_select "tr>td", :text => "MyText".to_s, :count => 2
#     assert_select "tr>td", :text => "palavras_chave".to_s, :count => 2
#     assert_select "tr>td", :text => "Area".to_s, :count => 2
#     assert_select "tr>td", :text => "Teste".to_s, :count => 2
#   end
# end
