# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "/backoffice/editais/new", type: :view do
  before(:each) do
    assign(:edital, Edital.new(
                      cr: "9.99",
                      inicio: Date.today,
                      termino: Date.today + 7.days,
                      descricao: "MyText",
                      asset: "test.pdf"
    ))
  end

  it "renders new edital form" do
    render

    assert_select "form[action=?][method=?]", backoffice_editais_path, "post" do
      assert_select "input#edital_cr[name=?]", "edital[cr]"

      assert_select "textarea#edital_descricao[name=?]", "edital[descricao]"
    end
  end
end
