# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CpfUploader do
  it 'allow only pdf' do
    uploader = CpfUploader.new(CPF.new, :asset)

    expect do
      File.open("#{Rails.root}/spec/fixtures/images/img.jpg") do |file|
        uploader.store!(file)
      end
    end.to raise_exception(CarrierWave::IntegrityError)
  end
end
