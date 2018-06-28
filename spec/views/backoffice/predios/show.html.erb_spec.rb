# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "/backoffice/predios/show", type: :view do
  before(:each) do
    @predio = assign(:predio, Predio.create!(
                                nome: "Nome",
                                acronimo: "CCT"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
  end
end
