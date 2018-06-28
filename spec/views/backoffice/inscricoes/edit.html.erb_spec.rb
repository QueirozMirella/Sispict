# frozen_string_literal: true
# require 'rails_helper'

# RSpec.describe "edital/1/inscricoes/edit", type: :view do
#   before(:each) do

#     @edital = assign(:edital, Edital.new(
#                       cr: "9.99",
#                       inicio: Date.today,
#                       termino: Date.today + 7.days,
#                       descricao: "MyText",
#                       asset: "test.pdf"
#     ))

#     @inscricao = assign(:inscricao, Inscricao.create!(
#       :edital => @edital.id
#     ))
#   end

#   it "renders the edit inscricao form" do
#     render

#     assert_select "form[action=?][method=?]", [@edital,@inscricao], "post" do

#       assert_select "input#inscricao_edital_id[name=?]", "inscricao[edital_id]"
#     end
#   end
# end
