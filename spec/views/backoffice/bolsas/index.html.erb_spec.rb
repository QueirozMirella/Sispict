# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "/backoffice/bolsas/index", type: :view do
  let(:predio) { create(:predio) }
  let(:edital) { create(:edital) }

  before(:each) do
    assign(:bolsas, [
      Bolsa.create!(
        predio: predio,
        edital: edital,
        quantidade: 2
      ),
      Bolsa.create!(
        predio: predio,
        edital: edital,
        quantidade: 2
      )
    ])
  end

  it "renders a list of bolsas" do
    render
    assert_select "tr>td", text: predio.to_s, count: 2
    assert_select "tr>td", text: edital.to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
