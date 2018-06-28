# frozen_string_literal: true
# # frozen_string_literal: true

# require 'rails_helper'

# RSpec.describe "projetos/edit", type: :view do
#   before(:each) do
#     @projeto = assign(:projeto, Projeto.create!(
#       :titulo => "MyText",
#       :keyword => "MyString",
#       :area => "MyString",
#       :objetivo => "MyText"
#     ))
#   end

#   it "renders the edit projeto form" do
#     render

#     assert_select "form[action=?][method=?]", projeto_path(@projeto), "post" do

#       assert_select "textarea#projeto_titulo[name=?]", "projeto[titulo]"

#       assert_select "input#projeto_keyword[name=?]", "projeto[keyword]"

#       assert_select "input#projeto_area[name=?]", "projeto[area]"

#       assert_select "textarea#projeto_objetivo[name=?]", "projeto[objetivo]"
#     end
#   end
# end
