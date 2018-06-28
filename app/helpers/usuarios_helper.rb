# frozen_string_literal: true

module UsuariosHelper
  OptionsForRules = Struct.new(:id, :description)

  def options_for_roles
    Role.availables.map do |value|
      OptionsForRules.new(value, value)
    end
  end
end
