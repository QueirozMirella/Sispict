# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ExtratoUploader do
  it 'allow only pdf' do
    uploader = ExtratoUploader.new(Extrato.new, :asset)

    expect do
      File.open("#{Rails.root}/spec/fixtures/images/img.jpg") do |file|
        uploader.store!(file)
      end
    end.to raise_exception(CarrierWave::IntegrityError)
  end
end
