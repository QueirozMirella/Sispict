# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "/backoffice/predios/index", type: :view do
  before(:each) do
    assign(:predios, [
      Predio.create!(
        nome: "Laboratório de Computação e Matemática",
        acronimo: "LCMAT"
      ),
      Predio.create!(
        nome: "Laboratório de Computação e Matemática",
        acronimo: "LCMAT"
      )
    ])
  end

  it "renders a list of predios" do
    render
    assert_select "tr>td", text: "Laboratório de Computação e Matemática".to_s, count: 2
  end
end
