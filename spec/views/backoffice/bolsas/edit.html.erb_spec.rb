# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "/backoffice/bolsas/edit", type: :view do
  before(:each) do
    @bolsa = assign(:bolsa, Bolsa.create!(
                              predio: nil,
                              edital: nil,
                              quantidade: 1
    ))
  end

  it "renders the edit bolsa form" do
    render

    assert_select "form[action=?][method=?]", backoffice_bolsa_path(@bolsa), "post" do
      assert_select "input#bolsa_predio_id[name=?]", "bolsa[predio_id]"

      assert_select "input#bolsa_edital_id[name=?]", "bolsa[edital_id]"

      assert_select "input#bolsa_quantidade[name=?]", "bolsa[quantidade]"
    end
  end
end
