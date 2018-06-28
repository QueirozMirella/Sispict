# frozen_string_literal: true

class CPF < ApplicationRecord
  before_save :convert_cpf_para_integer
  belongs_to :usuario, optional: true

  def convert_cpf_para_integer
    numero.to_i
  end
end
