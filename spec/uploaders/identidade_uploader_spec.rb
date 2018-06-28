# frozen_string_literal: true

require 'rails_helper'

RSpec.describe IdentidadeUploader do
  it 'allow only pdf' do
    uploader = IdentidadeUploader.new(Identidade.new, :asset)

    expect do
      File.open("#{Rails.root}/spec/fixtures/images/img.jpg") do |file|
        uploader.store!(file)
      end
    end.to raise_exception(CarrierWave::IntegrityError)
  end
end
