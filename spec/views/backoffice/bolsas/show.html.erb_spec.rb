# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "/backoffice/bolsas/show", type: :view do
  before(:each) do
    @bolsa = assign(:bolsa, Bolsa.create!(
                              predio: nil,
                              edital: nil,
                              quantidade: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
  end
end
