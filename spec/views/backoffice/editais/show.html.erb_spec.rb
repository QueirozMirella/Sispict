# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "/backoffice/editais/show", type: :view do
  before(:each) do
    @edital = assign(:edital, Edital.create!(
                                cr: "9.99",
                                inicio: Date.today,
                                termino: Date.tomorrow,
                                descricao: "MyText",
                                asset: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'fixtures', 'pdf', 'test.pdf'), 'application/pdf')
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/MyText/)
  end
end
