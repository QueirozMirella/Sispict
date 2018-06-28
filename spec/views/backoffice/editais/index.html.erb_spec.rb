# frozen_string_literal: true
# # frozen_string_literal: true

# require 'rails_helper'

# RSpec.describe "editais/index", type: :view do
#   before(:each) do
#     assign(:editais, [
#       Edital.create!(
#         cr: "9.99",
#         inicio: Date.today,
#         termino: Date.today + 7.days,
#         descricao: "descr",
#         asset: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'fixtures', 'pdf', 'test.pdf'), 'application/pdf')
#       ),
#       Edital.create!(
#         cr: "9.99",
#         inicio: Date.today,
#         termino: Date.today + 7.days,
#         descricao: "descr",
#         asset: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'fixtures', 'pdf', 'test.pdf'), 'application/pdf')
#       )
#     ])
#   end

#   it "renders a list of editais" do
#     render
#     assert_select "tr>td", text: "9.99".to_s, count: 2
#     assert_select "tr>td", text: "descr".to_s, count: 2
#   end
# end
