# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "/backoffice/editais/edit", type: :view do
  before(:each) do
    @edital = assign(:edital, Edital.create!(
                                cr: "9.99",
                                inicio: Date.today,
                                termino: Date.tomorrow,
                                descricao: "MyText",
                                asset: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'fixtures', 'pdf', 'test.pdf'), 'application/pdf')
    ))
  end

  it "renders the edit edital form" do
    render

    assert_select "form[action=?][method=?]", backoffice_edital_path(@edital), "post" do
      assert_select "input#edital_cr[name=?]", "edital[cr]"

      assert_select "textarea#edital_descricao[name=?]", "edital[descricao]"
    end
  end
end
