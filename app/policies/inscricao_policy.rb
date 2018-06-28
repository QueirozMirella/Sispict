# frozen_string_literal: true

class InscricaoPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      return scope.none if @usuario.nil?
    end
  end

  def index?
    @usuario.has_role?(:aluno) || @usuario.has_role?(:assessor) || @usuario.has_role?(:profesor)
  end

  def show?
    @usuario.has_role?(:aluno) || @usuario.has_role?(:assessor) || @usuario.has_role?(:profesor)
  end
end
