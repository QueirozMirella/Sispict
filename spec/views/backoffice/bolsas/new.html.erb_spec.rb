# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "/backoffice/bolsas/new", type: :view do
  before(:each) do
    assign(:bolsa, Bolsa.new(
                     predio: nil,
                     edital: nil,
                     quantidade: 1
    ))
  end

  it "renders new bolsa form" do
    render

    assert_select "form[action=?][method=?]", backoffice_bolsas_path, "post" do
      assert_select "input#bolsa_predio_id[name=?]", "bolsa[predio_id]"

      assert_select "input#bolsa_edital_id[name=?]", "bolsa[edital_id]"

      assert_select "input#bolsa_quantidade[name=?]", "bolsa[quantidade]"
    end
  end
end
