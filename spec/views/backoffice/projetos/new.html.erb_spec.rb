# frozen_string_literal: true
# # frozen_string_literal: true

# require 'rails_helper'

# RSpec.describe "projetos/new", type: :view do
#   before(:each) do
#     assign(:projeto, Projeto.new(
#       :titulo => "MyText",
#       :keyword => "MyString",
#       :area => "MyString",
#       :objetivo => "MyText"
#     ))
#   end

#   it "renders new projeto form" do
#     render

#     assert_select "form[action=?][method=?]", projetos_path, "post" do

#       assert_select "textarea#projeto_titulo[name=?]", "projeto[titulo]"

#       assert_select "input#projeto_keyword[name=?]", "projeto[keyword]"

#       assert_select "input#projeto_area[name=?]", "projeto[area]"

#       assert_select "textarea#projeto_objetivo[name=?]", "projeto[objetivo]"
#     end
#   end
# end
