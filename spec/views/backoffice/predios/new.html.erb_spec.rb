# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "/backoffice/predios/new", type: :view do
  before(:each) do
    assign(:predio, Predio.new(
                      nome: "MyString",
                      acronimo: "CCT"
    ))
  end

  it "renders new predio form" do
    render

    assert_select "form[action=?][method=?]", backoffice_predios_path, "post" do
      assert_select "input#predio_nome[name=?]", "predio[nome]"
      assert_select "input#predio_acronimo[name=?]", "predio[acronimo]"
    end
  end
end
