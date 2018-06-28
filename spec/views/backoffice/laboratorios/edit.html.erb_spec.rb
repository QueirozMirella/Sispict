# frozen_string_literal: true
# # frozen_string_literal: true

# require 'rails_helper'

# RSpec.describe "predios/:id/laboratorios/edit", type: :view do
#   before(:each) do
#     @predio = Predio.create!(nome: 'Centro de Biociencias e Biotecnologia', acronimo: 'CBB')
#     @laboratorio = assign(:laboratorio, Laboratorio.create!(
#                                           nome: "Laboratorio de Computacao e Matematica",
#                                           acronimo: "LCMAT",
#         predio_id: @predio
#     ))
#   end

#   it "renders the edit laboratorio form" do
#     render

#     assert_select "form[action=?][method=?]", [@predio, @laboratorio], "post" do
#       assert_select "input#laboratorio_nome[name=?]", "laboratorio[nome]"
#     end
#   end
# end
