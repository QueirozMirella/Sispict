# frozen_string_literal: true
# # frozen_string_literal: true

# require 'rails_helper'

# RSpec.describe "predios/:id/laboratorios/index", type: :view do
#   before(:each) do
#     assign(:laboratorios, [
#       Laboratorio.create!(
#         nome: "Laboratorio de Computacao e Matematica",
#         acronimo: "LCMAT",
#         predio_id: Predio.create!(nome: 'Centro de Biociencias e Biotecnologia', acronimo: 'CBB')
#       ),
#       Laboratorio.create!(
#         nome: "Laboratorio de Computacao e Matematica",
#         acronimo: "LCMAT",
#         predio_id: Predio.create!(nome: 'Centro de Biociencias e Biotecnologia', acronimo: 'CBB')
#       )
#     ])
#   end

#   it "renders a list of laboratorios" do
#     render
#     assert_select "tr>td", text: "Laboratorio de Computacao e Matematica".to_s, count: 2
#   end
# end
