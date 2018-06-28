# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "/backoffice/predios/edit", type: :view do
  before(:each) do
    @predio = assign(:predio, Predio.create!(
                                nome: "MyString",
                                acronimo: "CCT"
    ))
  end

  it "renders the edit predio form" do
    render

    assert_select "form[action=?][method=?]", backoffice_predio_path(@predio), "post" do
      assert_select "input#predio_nome[name=?]", "predio[nome]"
      assert_select "input#predio_acronimo[name=?]", "predio[acronimo]"
    end
  end
end
